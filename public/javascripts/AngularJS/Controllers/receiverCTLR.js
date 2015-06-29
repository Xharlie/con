/**
 * Created by charlie on 6/15/15.
 */

Da.controller('receiverCTLR', function($scope, $http,orderDetailFactory) {

    /********************************************     validation     ***************************************************/
    $scope.hasError = function(btnPass){
        if(eval("$scope."+btnPass)==null) eval("$scope."+btnPass+"=0");
        eval("$scope."+btnPass+"++");
    }
    $scope.noError = function(btnPass){
        eval("$scope."+btnPass+"--");
    }


    /******************************-------------- utility ------------------- *************************************/
    $scope.save = function(){
        if($scope.receiverError ==0 || $scope.receiverError == null ){
            $scope.$parent.check.province = $scope.check.province;
            $scope.$parent.check.city = $scope.check.city;
            $scope.$parent.check.area = $scope.check.area;
            $scope.$parent.orderInfo.receiver.name = $scope.receiver.name;
            $scope.$parent.orderInfo.receiver.phone = $scope.receiver.phone;
            $scope.$parent.orderInfo.receiver.province = $scope.receiver.province;
            $scope.$parent.orderInfo.receiver.city = $scope.receiver.city;
            $scope.$parent.orderInfo.receiver.area = $scope.receiver.area;
            $scope.$parent.orderInfo.receiver.address = $scope.receiver.address;
            $scope.$parent.orderInfo.receiver.fullAddress = $scope.receiver.province.concat(','
                                                            ,$scope.receiver.city
                                                            ,$scope.receiver.area
                                                            ,$scope.receiver.address);
            orderDetailFactory.pushReceiverInfo($scope.$parent.orderInfo.receiver);
            $scope.$parent.pageChange('orderInfo');
            $scope.$parent.testRecNoInfo();
        }
    }

    $scope.updateProvince = function(updater){
        $scope.receiver.province = updater.name;
        $scope.check.city=updater.city[0];
        $scope.updateCity($scope.check.city);
    }

    $scope.updateCity = function(updater){
        $scope.receiver.city = updater.name;
        $scope.check.area=updater.area[0];
        $scope.updateArea($scope.check.area);
    }

    $scope.updateArea = function(updater){
        $scope.receiver.area = updater.name;
    }
    /******************************-------------- init  function------------------- *************************************/

    function getProvinceNcity(){
        orderDetailFactory.getProvinceNcity().success(function(data){
            $scope.provinceNcity = data.province;
            if($scope.$parent.check.province==null){
                $scope.check.province = $scope.provinceNcity[0];
                $scope.check.city = $scope.check.province.city[0];
                $scope.check.area = $scope.check.city.area[0];
            }else{
                $scope.check.province = $scope.$parent.check.province;
                $scope.check.city = $scope.$parent.check.city;
                $scope.check.area = $scope.$parent.check.area;
            }
            $scope.receiver.province = $scope.check.province.name;
            $scope.receiver.city = $scope.check.city.name;
            $scope.receiver.area = $scope.check.area.name;
        });
    }

    /******************************-------------- init  variables------------------- *************************************/

    $scope.receiver = {
        name:$scope.$parent.orderInfo.receiver.name,
        phone:$scope.$parent.orderInfo.receiver.phone,
        province:$scope.$parent.orderInfo.receiver.province,
        city:$scope.$parent.orderInfo.receiver.city,
        area:$scope.$parent.orderInfo.receiver.area,
        address:$scope.$parent.orderInfo.receiver.address
    }

    $scope.check = {
        province: null,
        city: null,
        area: null
    }

    $scope.provinceNcity = null;

    getProvinceNcity();

});
