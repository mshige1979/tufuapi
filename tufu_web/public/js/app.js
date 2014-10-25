
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

function MainController($scope, $http){
    $scope.phones = [
        {'name': 'Nexus S',
            'snippet': 'Fast just got faster with Nexus S.'},
        {'name': 'Motorola XOOM™ with Wi-Fi',
            'snippet': 'The Next, Next Generation tablet.'},
        {'name': 'MOTOROLA XOOM™',
            'snippet': 'The Next, Next Generation tablet.'}
    ];

    $http({
        method: 'get',
        url: '/test1',
        withCredentials: true
    }).success(function(data) {
        $scope.companies = data;

    }).error(function(data, status) {
        alert('通信エラーが発生しました');

    });

}

function Page1Controller($scope){
    $scope.data = "aaaaa";
}

function Page2Controller($scope){
    $scope.data = "bbbbb";
}