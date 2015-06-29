/**
 * Created by charlie on 4/28/15.
 */
Da.factory('serviceTypeFactory', function($http){
    var combos = null;
    return {
        getAllCombos: function(HTL_ID){
            if(combos != null){
                return serviceUtil.getter(combos);
            }else{
                return $http({
                    method: 'POST',
                    heasders: {'content-Type':'application/json'},
                    url: 'controllers/ServiceType/getAllCombos',
                    data: {HTL_ID:HTL_ID}
                }).success(function(data){
                    combos = serviceUtil.structuralize(data);
                });
            }
        },
        getCombos: function(HTL_ID, SRVC_TP_ID){
            if(combos != null){
                var comboInSrv = {};
                comboInSrv[SRVC_TP_ID] = combos[SRVC_TP_ID]
                return serviceUtil.getter(comboInSrv);
            }else{
                return $http({
                    method: 'POST',
                    heasders: {'content-Type':'application/json'},
                    url: 'controllers/ServiceType/getAllCombos',
                    data: {HTL_ID:HTL_ID}
                }).success(function(data){
                    combos = serviceUtil.structuralize(data);
                });
            }
        }
    }
});

/**
 * Created by charlie on 4/28/15.
 */
Da.factory('userOrderFactory', function($http,$cookies){
    return{
        replaceCart: function(CMB_ID,cmb){
            $cookies.putObject(CMB_ID,cmb);
        },
        pushCart: function(cmb){
            if(cmb.CMB_ID in $cookies.getAll()){
                cmb.amount= $cookies.getObject(cmb.CMB_ID).amount+1;
            }else{
                cmb.amount=1;
            }
            $cookies.putObject(cmb.CMB_ID,cmb);
        },
        pullCart: function(cmb){
            if(cmb.CMB_ID in $cookies.getAll()) {
                 $cookies.remove(cmb.CMB_ID);
            }else{
                show('cookie产生错误');
            }
        },
        cartQuan: function(){
            var quan=0;
            for(var key in $cookies.getAll()){
                if(key == 'receiver') continue;
                quan = quan + parseInt($cookies.getObject(key).amount);
            }
            return quan;
        },
        getCart: function(){
            var cmbs = basicUtil.deepCopy($cookies.getAll());
            if(cmbs.receiver!=null) {
                delete cmbs.receiver;
            }
            return cmbs;
        },
        checkOTCart: function(tran,allCMB){
            return $http({
                method: 'POST',
                heasders: {'content-Type':'application/json'},
                url: 'controllers/UserOrder/checkOTCart',
                data: {tran:tran, allCMB:allCMB}
            })
        },
        cleanCookies: function(){
            for(var key in $cookies.getAll()){
                if(key!='receiver')$cookies.remove(key);
            }
        }
    }
});

Da.factory('orderDetailFactory',function($http,$cookies) {
    var payMethods = null;
    var HTL_ID_PRE = null;
    var provinceNcity = null;
    return{
        getAllPayMethods: function(HTL_ID){
            if(payMethods != null && HTL_ID_PRE == HTL_ID ){
                return serviceUtil.getter(payMethods);
            }else{
                return $http({
                    method: 'POST',
                    heasders: {'content-Type':'application/json'},
                    url: 'controllers/UserOrder/getAllPayMethods',
                    data: {HTL_ID:HTL_ID}
                }).success(function(data){
                    payMethods = data;
                    HTL_ID_PRE = HTL_ID;
                });
            }
        },
        getProvinceNcity: function(){
            if(provinceNcity != null){
                return serviceUtil.getter(provinceNcity);
            }else{
                return $http({
                    method: 'GET',
                    heasders: {'content-Type':'application/json'},
                    url: 'controllers/UserOrder/getProvinceNcity'
                }).success(function(data){
                    provinceNcity = data;
                });
            }
        },
        getReceiverInfo: function(){
            if($cookies.getObject('receiver')!=null){
                return $cookies.getObject('receiver');
            }else{
                return {
                    name:"",
                    phone:"",
                    province:"",
                    city:"",
                    area:"",
                    address:"",
                    fullAddress:""
                }
            }
        },
        pushReceiverInfo: function(info){
            $cookies.putObject('receiver',info);
        }
    }
});

