

Da.controller('mainCTLR', function($scope, $http, serviceTypeFactory, userOrderFactory){

    $scope.inCart={sumAmount:userOrderFactory.cartQuan()};

    $scope.init = function(HTL_ID, SRVC_TP_ID){
        serviceTypeFactory.getCombos(HTL_ID, SRVC_TP_ID).success(function(data){
            if(Array.isArray(data)){
                $scope.combos = (serviceUtil.structuralize(data))[SRVC_TP_ID];
            }else{
                $scope.combos = data[SRVC_TP_ID];
            }
            $scope.title=$scope.combos[0].SRVC_TP_NM;
            for (var i = 0; i < $scope.combos.length; i++ ){
                if($scope.combos[i].CMB_ID in userOrderFactory.getCart()){
                    $scope.combos[i].selected = 'T';
                    $scope.combos[i].backStyle ={'background-color':'#EEE'};
                }else{
                    $scope.combos[i].selected = 'F';
                    $scope.combos[i].backStyle = null;
                }
            }
        });
    }

    $scope.getCombosAvail = function(){
        for (var i = 0; i < $scope.combos.length; i++ ){
            if($scope.combos[i].CMB_ID in userOrderFactory.getCart()){
                $scope.combos[i].selected = 'T';
                $scope.combos[i].backStyle ={'background-color':'#EEE'};
            }else{
                $scope.combos[i].selected = 'F';
                $scope.combos[i].backStyle = null;
            }
        }
    }

    $scope.getSingleComboAvail = function(CMB_ID){
        for (var i = 0; i < $scope.combos.length; i++ ){
            if($scope.combos[i].CMB_ID == CMB_ID){
                if($scope.combos[i].CMB_ID in userOrderFactory.getCart()){
                    $scope.combos[i].selected = 'T';
                    $scope.combos[i].backStyle ={'background-color':'#EEE'};
                }else{
                    $scope.combos[i].selected = 'F';
                    $scope.combos[i].backStyle = null;

                }
            }
        }
    }

    /*************************/
    $scope.combos = [];
});

