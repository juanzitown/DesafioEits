angular.module('test', ['ngMaterial'])
.controller('AppCtrl', function( $scope ) {
    $scope.insertDriveIconURL = '/app/resources/icons/cake.svg';
    $scope.getAndroid = function() {
      return '/app/resources/icons/cake.svg';
    }
});

