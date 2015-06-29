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
        pushCart: function(cmb){
            if(cmb.CMB_ID in $cookies){
                cmb.amount= JSON.parse($cookies[cmb.CMB_ID]).amount++;
                show($cookies);
            }else{
                cmb.amount=1;
            }
            $cookies[cmb.CMB_ID]= JSON.stringify(cmb);
        },
        pullCart: function(cmb){
            if(cmb.CMB_ID in $cookies) {
                delete $cookies[cmb.CMB_ID];
            }else{
                show($cookies);
            }
        },
        cartQuan: function(){
            var quan=0;
            for(var key in $cookies){
                quan = quan + parseInt(JSON.parse($cookies[key]).amount);
            }
            return quan;
        },
        getCart: function(){
            if($cookies.keys.length >= 1) {
                return $cookies
            }else{
                show($cookies);
            }
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
            for(var key in $cookies){
                delete $cookies[key];
            }
        }
    }
});

Da.factory('orderDetailFactory', function($http) {
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
        }
    }
})

