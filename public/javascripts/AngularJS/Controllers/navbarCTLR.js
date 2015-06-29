/**
 * Created by charlie on 4/12/15.
 */
Da.controller('navbarCTLR', function($scope,$rootScope){
    $rootScope.cartOpen = false;
    $scope.cartUp = function() {
        $rootScope.cartOpen = true;
    }
    $scope.$watch('inCart.sumAmount',
        function(newValue, oldValue) {
            if(newValue>0){
                $scope.cartButtonClass = 'btn-primary';

            }else{
                $scope.cartButtonClass = 'btn-disabled';
            }
        },
        true
    );
    /****************************** init*****************************/
    $scope.cartButtonClass = 'btn-disabled';
});