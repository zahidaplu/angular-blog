var fetch = angular.module('myapp', []);

fetch.controller('userCtrl', ['$scope', '$http', function ($scope, $http) {
 $http({
  method: 'get',
  url: 'getData.php'
 }).then(function successCallback(response) {
  // Store response data
  $scope.users = response.data;
 });
}]);