/**
 * Created by charlie on 5/19/15.
 */
Da.directive('renderLabel', function($document,$parse) {
    return {
        restrict: 'AE',
        replace: false,
        transclude: true,            // has element inside,
        scope: {
            bindee:"="
        },
        link: function link(scope,element, attrs) {
            scope.$watch("bindee", function(newValue, oldValue) {
                    $(element).html(newValue);
                    $(element).width($(element).width()+1);
                    $(element).width($(element).width()-1);
                },
                true
            );
        }
    };
});