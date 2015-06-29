/**
 * Created by charlie on 5/15/15.
 */

Da.directive('xlabel', function($document,$parse) {
    return {
        restrict: 'AEC',
        replace: false,
        transclude: true,
        controller: 'xlabelController',
        scope: {
            checkee: '=',
            checker: '@',
            btnPass: '@',
            comparer:'='
        },
        link: function link(scope,element, attrs) {
            var focuser = $(element);
            scope.$watch('checkee', function(newValue, oldValue) {
                if(focuser.css("border-color")=="rgb(255, 0, 0)"){
                    /* error number -- */
                    focuser.css("border-color","");
                    scope.$parent.noError(scope.btnPass);
                }
                var alertContent=scope.checkAll(newValue);
                if(alertContent!=null) {
                    //focuser.css("border-color", "red");
                    focuser.css("border-color", "red");
                    /* error number ++ */
                    scope.$parent.hasError(scope.btnPass);
                }
            },true);
            if(scope.comparer!=null && scope.comparer!=""){
                scope.$watch('comparer', function(newValue, oldValue) {
                    if(focuser.css("border-color")=="rgb(255, 0, 0)"){
                        /* error number -- */
                        focuser.css("border-color","");
                        scope.$parent.noError(scope.btnPass);
                    }
                    var alertContent=scope.checkAll(scope.checkee);
                    if(alertContent!=null) {
                        focuser.css("border-color", "red");
                        /* error number ++ */
                        scope.$parent.hasError(scope.btnPass);
                    }
                },true);
            }
        }
    };
});
