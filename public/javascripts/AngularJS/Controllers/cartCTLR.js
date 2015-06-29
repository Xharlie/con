/**
 * Created by charlie on 5/7/15.
 */

Da.controller('cartCTLR', function($scope, $http, $rootScope, userOrderFactory,orderDetailFactory,$timeout) {

    /********************************************     validation     ***************************************************/
    $scope.hasError = function(btnPass){
        if(eval("$scope."+btnPass)==null) eval("$scope."+btnPass+"=0");
        eval("$scope."+btnPass+"++");
    }
    $scope.noError = function(btnPass){
        eval("$scope."+btnPass+"--");
    }
    /******************************-------------- logic control------------------- *************************************/

    $scope.Limit = function(num){
        return Number(parseFloat(num).toFixed(2));
    }
    $scope.selectPayMethod = function(pre,paymethod){
        pre.buttonClass = "btn-disabled";
        $scope.orderInfo.paymethodSelected = paymethod;
        $scope.orderInfo.paymethodSelected = paymethod;
    }

    $scope.calculatePay = function(obj){
        var pay = 0;
        for( var key in obj) {
            var amountValid = parseInt(obj[key].amount);
            if (isNaN(amountValid) || amountValid == null || amountValid <= 0 || amountValid > 100) {
                continue;
            }
            pay = pay + amountValid * Number(obj[key].CMB_PRC);
        }
        return pay;
    }

    $scope.updatePayInDue = function(){
        $scope.orderInfo.payInDue = $scope.calculatePay($scope.cart);
        $scope.transFeeEstimate();
    }

    $scope.removeCmb = function(cmb){
        delete $scope.cart[cmb.CMB_ID];
        userOrderFactory.pullCart(cmb);
        $scope.orderInfo.payInDue = basicUtil.Limit($scope.calculatePay($scope.cart));
        $scope.$parent.inCart.sumAmount = userOrderFactory.cartQuan();
        $scope.$parent.$parent.$parent.getSingleComboAvail(cmb.CMB_ID)
    }

    $scope.cleanup = function(){
        userOrderFactory.cleanCookies();
        $scope.$parent.inCart.sumAmount = userOrderFactory.cartQuan();
        $scope.$parent.$parent.$parent.getCombosAvail();
        //window.location.reload();
    }

    $scope.submit = function(){
        if($scope.recNoInfo){
            alert('请填写收件人信息');
            return;
        }
        if($scope.orderInfo.paymethodSelected.PAY_MTHD_NM=='酒店挂账' && $scope.infoError!=0 && $scope.infoError!=null){
            alert('请填写房间号');
            return;
        }
        var allCMB = [];
        for(var key in $scope.cart){
            allCMB.push([key,$scope.cart[key].amount]);
        }

        var tran = {
            HTL_ID: '2',
            TS: dateUtil.tstmpFormat(new Date()),
            CUS_PHN: null,
            CUS_NM: null,
            PYMNT_TTL:$scope.orderInfo.payInDue+$scope.orderInfo.transFee,
            STATUS: '未确认',
            RM_ID: $scope.orderInfo.RM_ID,
            PYMNT_MTHD: $scope.orderInfo.paymethodSelected.PAY_MTHD_NM,
            RCVR_NM: $scope.orderInfo.receiver.name,
            RCVR_PHN: $scope.orderInfo.receiver.phone,
            RCVR_ADDRSS: $scope.orderInfo.receiver.fullAddress
        };
        userOrderFactory.checkOTCart(tran,allCMB).success(function(data){
            $scope.success = true;
            $timeout(function(){
                $scope.cleanup();
                $scope.orderInfo.tran_id = data;
                $scope.orderInfo.payInTotal = $scope.orderInfo.payInDue+$scope.orderInfo.transFee;
                $scope.pageChange('confirm');
            }, 1000);
        });
    }

    $scope.pageChange = function(nextPage){
        $scope.cartStage = nextPage;
    }

    $scope.$watch('orderInfo.paymethodSelected',
        function(newValue, oldValue) {
            if(newValue == oldValue) return;
            paymethodsClass($scope.paymethods);
        },
        true
    );

    $scope.transFeeEstimate = function(){
        if($scope.orderInfo.fullAddress == "") return;
        $scope.orderInfo.transFee = 0;
        for(var key in $scope.cart){
            $scope.orderInfo.transFee = $scope.orderInfo.transFee +
            parseFloat($scope.cart[key].CMB_TRANS_PRC)*$scope.cart[key].amount;
        }
    }

    $scope.testRecNoInfo = function(){
        for(var key in $scope.orderInfo.receiver){
            if($scope.orderInfo.receiver[key] ==""){
                $scope.recNoInfo= true;
                return;
            }
        }
        $scope.recNoInfo= false;
    }


    function paymethodsClass(paymethods){
        for(var i =0; i < paymethods.length; i++){
            if($scope.orderInfo.paymethodSelected.PAY_MTHD_ID == paymethods[i].PAY_MTHD_ID ){
                paymethods[i].buttonClass = 'btn-primary';
            }else{
                paymethods[i].buttonClass = 'btn-disabled';
            }
        }
    }

        /*********************** -------------- page control------------------- ***********************/
    $scope.cartDown = function(){
        $rootScope.cartOpen = false;
        //window.location.reload();
    }
    $scope.nowEmpty = function(cart){
        return (cart == null ||Object.keys(cart).length == 0);
    }
    /******************************-------------- init  function------------------- *************************************/
    function getPaymentMethods(HTL_ID){
        orderDetailFactory.getAllPayMethods(HTL_ID).success(function(data){
            if(data.length ==0) return;
            $scope.paymethods = data;
            $scope.orderInfo.paymethodSelected = $scope.paymethods[0];
            paymethodsClass($scope.paymethods);
        });
    }

    /***************************** -------------- init variable------------------- *******************/
    $scope.cart = basicUtil.objDecode(userOrderFactory.getCart());
    $scope.paymethods = [];
    $scope.success = false;
    $scope.cartStage = 'products';
    $scope.limitArray = basicUtil.getTuple(1,51);
    $scope.recNoInfo = true;
    $scope.check = {
        province: null,
        city: null,
        area: null
    }
    $scope.orderInfo = {
        receiver:orderDetailFactory.getReceiverInfo(),
        tran_id:"",
        paymethodSelected:"",
        RM_ID:"",
        transFee:0,
        payInDue: basicUtil.Limit($scope.calculatePay($scope.cart)),
        payInTotal: 0
    }

    getPaymentMethods(2);
    $scope.transFeeEstimate();

})

/************************                       single Master Pay sub controller                      ***********************/
    .controller('cmbInCartCtrl', function ($scope,userOrderFactory) {
        $scope.$watch('cmb.amount',
            function(newValue, oldValue) {
                if(newValue==oldValue) return;
                if($scope.cmb.amount == null || isNaN($scope.cmb.amount) || $scope.cmb.amount <= 0 ){
                    $scope.$parent.cart[$scope.cmb.CMB_ID].amountColor = ["redBorder"];
                }else{
                    $scope.$parent.cart[$scope.cmb.CMB_ID].amountColor = null;
                }
                userOrderFactory.replaceCart($scope.cmb.CMB_ID,$scope.cmb);
                $scope.$parent.$parent.inCart.sumAmount = userOrderFactory.cartQuan();
                $scope.$parent.updatePayInDue();

            },
            true
        );
    });