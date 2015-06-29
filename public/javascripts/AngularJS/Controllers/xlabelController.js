/**
 * Created by charlie on 5/27/15.
 */

Da.controller('xlabelController',function ($scope) {
    var filters = $scope.checker.split("|");
    $scope.checkAll=function(value){
        for(var i=0;i<filters.length;i++){
            var alertLabel=null;
            if(filters[i] in filterAlert2){
                alertLabel = eval("filterAlert2."+filters[i]+"(value,$scope.comparer)");
            }else{
                alertLabel = eval("filterAlert."+filters[i]+"(value)");
            }
            if(alertLabel!=null) return alertLabel;
        }
        return null;
    }
});

