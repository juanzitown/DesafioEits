angular.module('desafio', ['ngMaterial'])
  .controller('homeController', function ($scope, $mdDialog) {
	  
	$scope.homeController = {};
	  
    $scope.homeController.init = function() {
    	$scope.PRODUTO = 0;
    	$scope.MARCA = 1;
    	$scope.LOGAR = 2;
  	  
  	  	var tabs = [
	        { title: 'PRODUTO', content: "MODULO PRODUTO", id:0},
	        { title: 'MARCA', content: "MODULO MARCA", id:1},
	        { title: 'LOGAR', content: "MODULO LOGAR", id:2}
        ];
      
	    $scope.homeController.tabs = tabs;
	    $scope.homeController.selectedTabIndex = 0;
	    
	    
	    $scope.homeController.initProduto = function () {
//	    	$scope.marcaController.cadastrar = {};
//	    	$scope.marcaController.cadastrar.marca = {};
	    };
	    
	    $scope.homeController.initMarca = function () {
//	    	$scope.marcaController.marcas = {};
	    };
	    
	    $scope.homeController.initLogar = function () {
//	    	$scope.marcaController.alterar = {};
//	    	$scope.marcaController.alterar.comboBoxMarca = {};
	    };
      
	    $scope.homeController.initProduto();
    	$scope.homeController.initMarca();
    	$scope.homeController.initLogar();
    	
    	$scope.homeController.changeToMarca = function () {
    		$scope.homeController.initMarca();
	    };
	    
	    $scope.homeController.changeToProduto = function () {
	    	$scope.homeController.initProduto();
	    	
	    };
	    
	    $scope.homeController.changeToLogar = function () {
	    	$scope.homeController.initLogar();
	    };
	    
      
	    $scope.homeController.changeToMarca();
    	$scope.homeController.changeToProduto();
    	$scope.homeController.changeToLogar();
//    	$scope.marcaController.changeToList();

    };
    
    $scope.homeController.onClickTab = function(index) {
    	if(index == $scope.PRODUTO) {
    		$scope.homeController.changeToProduto();
    	} else if (index == $scope.MARCA) {
    		$scope.homeController.changeToMarca();
    	} else if (index == $scope.LOGAR) {
    		$scope.homeController.changeToLogar();
    	}
    };
    
    

  })
  
  /**
     *  MARCA
     */
  
  .controller('marcaController', function ($scope, $mdDialog) {
	  
	$scope.marcaController = {};
	  
    $scope.marcaController.init = function() {
    	
    	$scope.scopeModal = {};
    	$scope.scopeModal.marca = {};
    	
    	$scope.iconAlterar = "/app/resources/icons/cake.svg";
    	$scope.iconDeletar = "/app/resources/icons/android.svg";
    	$scope.templateAlterarModal = "/app/views/marcaAlterarTest.jsp";
    	$scope.templateDeletarModal = "/app/views/marcaDeletar.jsp";
    	
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
//    	$scope.marcaController.changeToList();

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
    
    $scope.marcaController.alterarModal = function(ev, marca) {
    	$scope.marcaController.showAdvanced(ev, marca, $scope.templateAlterarModal);
    }
    
    $scope.marcaController.deletarModal = function() {
    	
    	$scope.marcaController.showAdvanced(ev, marca, $scope.templateDeletarModal);
    }
    
    $scope.marcaController.showAdvanced = function(ev, marca, template) {
        $mdDialog.show({
          controller: DialogController,
          templateUrl: template,
          targetEvent: ev,
          locals: {
        	  marca: marca
          }
        })
        .then(function(marcaAlterada) {
        	if(marcaAlterada != marca) {
        		$scope.marcaController.alterMarca(marcaAlterada);
        		$scope.marcaController.changeToList();
        	}
         	
        }, function() {
//        	alert('Modal Cancelada pelo usuario.');
        });
      };
      
      function DialogController($scope, $mdDialog, marca) {
    	  $scope.marca = angular.copy(marca);
    	  $scope.hide = function() {
    	    $mdDialog.hide();
    	  };
    	  $scope.cancel = function() {
    	    $mdDialog.cancel();
    	  };
    	  $scope.answer = function(answer) {
    	    $mdDialog.hide(answer);
    	  };
    	}
    
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
    
    /**
     * 
     */
    $scope.marcaController.alterMarca = function (marca) {
		  
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
  })