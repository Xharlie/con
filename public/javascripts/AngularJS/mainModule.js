var Da = angular.module('Da',['ngRoute','infinite-scroll','ngAnimate', 'ngCookies','ngTouch']);
Da.config(['$routeProvider',function ($routeProvider){
    $routeProvider
        .when('/serviceTypeList',
        {
            controller:'serviceTypeListCTRL',
            templateUrl: '/views/serviceTypeList.html'
        })
        .when('/comoboList/:SRVC_TP_ID',
        {
            controller:'comboListCTLR',
            templateUrl: '/views/comoboList.html'
        })
        .otherwise({redirectTo: '/serviceTypeList'})
}
]);
//.config(['$tooltipProvider', function($tooltipProvider){
//    $tooltipProvider.setTriggers({'openEvent': 'closeEvent'});   // dynamically open or close popover
//}]);

//
//app.filter('paginate', function() {
//    return function(input, start, number) {
//        if (!input || !input.length) { return; }
//        start = parseInt(start, 10);
//        return input.slice(start,start+number);
//    };
//});
//
//app.filter('unique', function() {
//    return function(input, key) {
//        var unique = {};
//        var uniqueList = [];
//        for(var i = 0; i < input.length; i++){
//            if(typeof unique[input[i][key]] == "undefined"){
//                unique[input[i][key]] = "";
//                uniqueList.push(input[i]);
//            }
//        }
//        return uniqueList;
//    };
//});