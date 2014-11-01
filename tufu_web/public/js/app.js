
var tufuApp = angular.module('tufuApp', ['ngRoute', 'ngAnimate']);

tufuApp.config(function($routeProvider, $locationProvider){

    $routeProvider.when('/', {
        templateUrl: "templates/main.html",
        controller: MainController

    }).when('/item1', {
        templateUrl: "templates/item1.html",
        controller: Page1Controller

    }).when('/item2', {
        templateUrl: "templates/item2.html",
        controller: Page2Controller

    }).otherwise({
        redirectTo: '/'
    });

});

tufuApp.config(function($locationProvider){
    $locationProvider.html5Mode({
        enabled: true,
        requireBase: false
    });
});

tufuApp.controller('NaviController', NaviController);

function MainController($scope, $http){
}

function Page1Controller($scope, $http){
    $http({
        method: 'get',
        url: '/api/food',
        withCredentials: true
    }).success(function(data) {
        $scope.food_list = data;

    }).error(function(data, status) {
        alert('通信エラーが発生しました');

    });
}

function Page2Controller($scope, $http){
    $http({
        method: 'get',
        url: '/api/beer',
        withCredentials: true
    }).success(function(data) {
        $scope.beer_list = data;

    }).error(function(data, status) {
        alert('通信エラーが発生しました');

    });
}

function NaviController($scope){
    $scope.link = function(){
        location.href = "/";
    }
}