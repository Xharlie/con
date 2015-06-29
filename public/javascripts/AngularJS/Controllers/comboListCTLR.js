/**
 * Created by charlie on 4/2/15.
 */

Da.controller('comboListCTLR', function($scope, $http, $rootScope, serviceTypeFactory, userOrderFactory){

    /*------------------------------ page control --------------------------------*/
    $scope.addCombo =function(cmb){
        userOrderFactory.pushCart(cmb);
        cmb.selected = 'T';
        $scope.$parent.inCart.sumAmount = userOrderFactory.cartQuan();
    }

    $scope.removeCombo =function(cmb){
        userOrderFactory.pullCart(cmb);
        cmb.selected = 'F';
        $scope.$parent.inCart.sumAmount = userOrderFactory.cartQuan();
    }

    /*------------------------------- init function -------------------------------*/

    //function init(HTL_ID, SRVC_TP_ID){
    //    serviceTypeFactory.getCombos(HTL_ID, SRVC_TP_ID).success(function(data){
    //        if(Array.isArray(data)){
    //            $scope.combo = (serviceUtil.structuralize(data))[SRVC_TP_ID];
    //        }else{
    //            $scope.combo = data[SRVC_TP_ID];
    //        }
    //        $rootScope.title=$scope.combo[0].SRVC_TP_NM;
    //        for (var i = 0; i < $scope.combo.length; i++ ){
    //            if($scope.combo[i].CMB_ID in $cookies){
    //                $scope.combo[i].selected = 'T';
    //                $scope.combo[i].backStyle ={'background-color':'#EEE'};
    //            }
    //        }
    //    });
    //}

    /* -------------- init variable------------------- */
    $scope.animationStyle = 'slide';
        var pathArray = window.location.href.split("/:");
    var SRVC_TP_ID = pathArray[1];
    $scope.$parent.init(2,SRVC_TP_ID);

});

