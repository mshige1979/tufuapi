/**
 * Created by matsumotoshigeharu on 14/10/25.
 */
var tufuApp = angular.module('tufuApp', []);
tufuApp.controller('PhoneListCtrl', ['$scope', '$http', function ($scope, $http) {
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

}]);
