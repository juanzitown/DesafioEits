angular.module('moduloMarca', ['ngMaterial'])
  .controller('marcaController', function ($scope, $log) {
	  
	$scope.marcaController = {};
	  
    $scope.marcaController.init = function() {
    	$scope.CADASTRAR = 0;
    	$scope.LISTAR = 1;
    	$scope.ALTERAR = 2;
    	$scope.DELETAR = 3;
    	
    	$scope.marcaController.INSERT_STATE = "INSERT";
  	  	$scope.marcaController.LIST_STATE = "LIST";
  	  	$scope.marcaController.ALTER_STATE = "ALTER";
  	  	$scope.marcaController.DELETE_STATE = "DELETE";
  	  	$scope.marcaController.CURRENT_STATE = "";
  	  
  	  	var tabs = [
	        { title: 'Cadastrar', content: "CADASTRAR MARCA", id:1},
	        { title: 'Listar', content: "LISTAR MARCA", id:2},
	        { title: 'Alterar', content: "ALTERAR MARCA", id:3},
	        { title: 'Deletar', content: "DELETAR MARCA"}
        ];
      
	    $scope.marcaController.tabs = tabs;
	    $scope.marcaController.selectedTabIndex = 0;
	    
	    
	    $scope.marcaController.initInsert = function () {
	    	$scope.marcaController.cadastrar = {};
	    	$scope.marcaController.cadastrar.marca = {};
	    };
	    
	    $scope.marcaController.initList = function () {
	    	$scope.marcaController.marcas = {};
	    };
	    
	    $scope.marcaController.initAlter = function () {
	    	$scope.marcaController.alterar = {};
	    	$scope.marcaController.alterar.comboBoxMarca = {};
	    };
	    
	    $scope.marcaController.initDelete = function () {

	    };
      
	    $scope.marcaController.initAlter();
    	$scope.marcaController.initDelete();
    	$scope.marcaController.initInsert();
    	$scope.marcaController.initList();
    	
    	
    	
    	$scope.marcaController.changeToInsert = function () {
    		$scope.marcaController.initInsert();
	    };
	    
	    $scope.marcaController.changeToList = function () {
	    	$scope.marcaController.marcas = {};
	    	$scope.marcaController.findAllMarca();
	    	
	    };
	    
	    $scope.marcaController.changeToAlter = function () {
	    	$scope.marcaController.initAlter();
	    };
	    
	    $scope.marcaController.changeToDelete = function () {

	    };
      
	    $scope.marcaController.changeToAlter();
    	$scope.marcaController.changeToDelete();
    	$scope.marcaController.changeToInsert();
    	$scope.marcaController.changeToList();

    };
    
    $scope.marcaController.onClickTab = function(index) {
    	if(index == $scope.CADASTRAR) {
    		$scope.marcaController.changeToInsert();
    	} else if (index == $scope.LISTAR) {
    		$scope.marcaController.changeToList();
    	} else if (index == $scope.ALTERAR) {
    		$scope.marcaController.changeToAlter();
    	} else if (index == $scope.DELETAR) {
    		$scope.marcaController.changeToDelete();
    	}
    };
      
    $scope.marcaController.findAllMarca = function(){
    	marcaServiceDwr.findAllMarca({
  		  callback : function(data){
  			  $scope.marcaController.marcas = data;
  			  $scope.$apply();
  		  },
  		  errorHandler : function(){	
  		  }
  		 });
    };
    
    $scope.marcaController.saveMarca = function () {
		 // Retrieve value of text inputs
		 var marca = $scope.marcaController.cadastrar.marca;
		  
		 // Pass two numbers, a callback function, and error function
		 marcaServiceDwr.saveMarca(marca, {
		  callback : function(data){
			  $scope.marcaController.cadastrar.resultado = data.descricao + " Salvo com sucesso!";
			  alert($scope.marcaController.cadastrar.resultado);
		  },
		  errorHandler : function(){
			// Show a popup message
				 alert("Não foi possivel cadastrar Marca");
		  }
		 });
		 
		 $scope.marcaController.initInsert();
    };
    
    $scope.marcaController.alterMarca = function () {
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
		 
		 $scope.marcaController.initAlter();	 
   };
  });