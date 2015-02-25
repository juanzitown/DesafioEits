angular.module('marcaForm', ['ngMaterial'])
.controller('cadastrarMarca', function($scope) {
	$scope.resultado = 'lalalaal';
	$scope.saveMarca = function () {
		 // Retrieve value of text inputs
		 var descricao = $scope.marca.descricao;
		  
		 // Pass two numbers, a callback function, and error function
		 marcaServiceDwr.saveMarca(descricao, {
		  callback : handleAddSuccess,
		  errorHandler : handleAddError
		 });
		}

		// data contains the returned value
		function handleAddSuccess(data) {
			 console.log(data);
		 // Assigns data to result id
		// dwr.util.setValue("marcaDescricao", data.descricao+" salvo com Sucesso!");
		}
		
		function handleAddError() {
			 // Show a popup message
			 alert("Não foi possivel cadastrar Marca");
		}
		
});

//Retrieves the matching value
// Delegates to the dwrService
