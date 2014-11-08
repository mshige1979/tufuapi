google.load('visualization', '1', {
    packages: ['corechart']
});

google.setOnLoadCallback(function() {
    angular.bootstrap(document.body, ['tufuApp']);
});

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
tufuApp.controller('GraphController', GraphController);

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

function GraphController($scope, $http){

    $http({
        method: 'get',
        url: '/api/dataGraph',
        withCredentials: true
    }).success(function(dataList) {
        var data = new google.visualization.DataTable();

        data.addColumn('string', '年');
        data.addColumn('number', '合計');
        data.addColumn('number', '男性');
        data.addColumn('number', '女性');
        data.addRows(
            dataList
        );

        var ac = new google.visualization.ComboChart(document.getElementById('chart_div'));

        ac.draw(data,
            {
                "title" : '通院者数推移（千人）',
                "hAxis": {
                    "title": "年"
                },
                "seriesType": "bars", // 全体は棒グラフ(default='line')
                "isStacked": true,
                "series": {
                    "0": {"type": "line"}
                } // 平均だけ折れ線グラフ });
            }
        );

    }).error(function(data, status) {
        alert('通信エラーが発生しました');

    });



}

