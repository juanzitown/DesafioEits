angular.module('StarterApp', ['ngMaterial'])
.controller('mainController', function($scope, $timeout, $mdSidenav, $log) {
	$scope.tabs = [
	               {name:"Livro"},
	               {name:"Categoria"}
	];
	

	$scope.toggleSidebar = function(){
	           $mdSidenav('left').toggle()
	               .then(function(){
	                   $log.debug("left");
	               });
	       }
	
})