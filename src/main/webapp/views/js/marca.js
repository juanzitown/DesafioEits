angular.module('marca', ['ngMaterial'])
  .controller('marcaController', function ($scope, $log) {
	  
	  $scope.marcaController = {};
	  
	  $scope.INSERT_STATE = "INSERT";
	  $scope.LIST_STATE = "LIST";
	  $scope.ALTER_STATE = "ALTER";
	  $scope.CURRENT_STATE = "";
	  
    var tabs = [
      { title: 'Cadastrar', content: "CADASTRAR MARCA", id:1},
      { title: 'Listar', content: "LISTAR MARCA", id:2},
      { title: 'Alterar', content: "ALTERAR MARCA", id:3},
      { title: 'Deletar', content: "DELETAR MARCA"}
     ];
    $scope.tabs = tabs;
    $scope.selectedIndex = 0;
     
    $scope.changeState = function(state) {
    	 $scope.CURRENT_STATE = state;
    	 
    	 if(state == $scope.INSERT_STATE){
    		 $scope.changeToInsert();
    	 }
    	 else if(state == $scope.LIST_STATE){
    		 $scope.changeToList();
    	 }
    	 else if(state == $scope.ALTER_STATE){
    		 $scope.changeToAlter();
    	 }
    }
    
    $scope.changeToInsert = function () {
    	$scope.marcaController.cadastrar = {};
    	$scope.marcaController.cadastrar.marca = {};
    }
    
    $scope.changeToList = function () {
    	$scope.marcaController.marcas = {};
    	$scope.findAllMarca();
    }
    
    $scope.changeToAlter = function () {
    	$scope.marcaController.alterar = {};
    	$scope.marcaController.alterar.comboBoxMarca = {};
    }
    
    
    $scope.findAllMarca = function(){
    	marcaServiceDwr.findAllMarca({
  		  callback : function(data){
  			  $scope.marcaController.marcas = data;
  		  },
  		  errorHandler : function(){	
  		  }
  		 });
    }
    
    $scope.saveMarca = function () {
		 // Retrieve value of text inputs
		 var marca = $scope.marcaController.cadastrar.marca;
		  
		 // Pass two numbers, a callback function, and error function
		 marcaServiceDwr.saveMarca(marca, {
		  callback : function(data){
			  $scope.marcaController.cadastrar.resultado = data.descricao + " Salvo com sucesso!";
			  $scope.$apply();
			  alert($scope.marcaController.cadastrar.resultado);
		  },
		  errorHandler : function(){
			// Show a popup message
				 alert("Não foi possivel cadastrar Marca");
		  }
		 });
    }
    
    $scope.alterMarca = function () {
		 // Retrieve value of text inputs
		 var marca = $scope.marcaController.alterar.comboBoxMarca;
		  
		 // Pass two numbers, a callback function, and error function
		 marcaServiceDwr.alterMarca(marca, {
		  callback : function(data){
			  $scope.marcaController.alterar.resultado = data.descricao + " Alterado com sucesso!";
			  alert($scope.marcaController.alterar.resultado);
		  },
		  errorHandler : function(){
			// Show a popup message
				 alert("Não foi possivel cadastrar Marca");
		  }
		 });
   }
  });