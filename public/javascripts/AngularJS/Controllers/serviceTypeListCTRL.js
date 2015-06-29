/**
 * Created by charlie on 4/23/15.
 */
Da.controller('serviceTypeListCTRL', function($scope, $http, $rootScope,serviceTypeFactory){

    /* -------------- init function------------------- */


    function init(){

        serviceTypeFactory.getAllCombos(2).success(function(data){
            if(Array.isArray(data)){
                $scope.serviceTypes = serviceUtil.structuralize(data);
            }else{
                $scope.serviceTypes = data;
            }
        });
    }

    /* -------------- init variable------------------- */
    $scope.animationStyle = 'basement';
    $scope.serviceTypes={};
    init();
});
