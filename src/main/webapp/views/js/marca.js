angular.module('marca', ['ngMaterial'])
  .controller('marcaController', function ($scope, $log) {
	  
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
    		$scope.marca = {};
    	
    }
    
    $scope.changeToList = function () {
    	$scope.marcas = {};
    	$scope.findAllMarca();
    	
    }
    
    $scope.changeToAlter = function () {
    	
    }
    
    $scope.findAllMarca = function(){
    	marcaServiceDwr.findAllMarca({
  		  callback : function(data){
  			  $scope.marcas = data;
  			  $scope.$apply();
  		  },
  		  errorHandler : function(){
  				
  		  }
  		 });
    }
    
    $scope.saveMarca = function () {
		 // Retrieve value of text inputs
		 var marca = $scope.marca;
		  
		 // Pass two numbers, a callback function, and error function
		 marcaServiceDwr.saveMarca(marca, {
		  callback : function(data){
			  $scope.resultado = data.descricao + " Salvo com sucesso!";
			  $scope.$apply();
			  alert($scope.resultado);
		  },
		  errorHandler : function(){
			// Show a popup message
				 alert("Não foi possivel cadastrar Marca");
		  }
		 });
    }
    
    $scope.alterMarca = function () {
		 // Retrieve value of text inputs
		 var marca = $scope.marca;
		  
		 // Pass two numbers, a callback function, and error function
		 marcaServiceDwr.alterMarca(marca, {
		  callback : function(data){
			  $scope.resultadoAlterar = data.descricao + " Alterado com sucesso!";
			  $scope.$apply();
			  alert($scope.resultadoAlterar);
		  },
		  errorHandler : function(){
			// Show a popup message
				 alert("Não foi possivel cadastrar Marca");
		  }
		 });
   }

//    $scope.$watch('selectedIndex', function(current, old){
//      if ( old && (old != current)) $log.debug('Goodbye ' + tabs[old].title + '!');
//      if ( current )                $log.debug('Hello ' + tabs[current].title + '!');
//    });
    
    
  });