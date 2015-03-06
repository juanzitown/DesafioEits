angular.module('desafio', ['ngMaterial', 'ngRoute'])
	.config(['$routeProvider',
		  function($routeProvider) {
			    $routeProvider
			      .when('/marca/cadastrar', {
				    templateUrl: '/app/views/marca/marcaCadastrar.jsp',
				    controller: 'marcaController'
			      })
			      .when('/marca/listar', {
				    templateUrl: '/app/views/marca/marcaListar.jsp',
				    controller: 'marcaController'
			      })
			      .when('/produto/cadastrar', {
				    templateUrl: '/app/views/produto/produtoCadastrar.jsp',
				    controller: 'produtoController'
			      })
			      .when('/produto/listar', {
				    templateUrl: '/app/views/produto/produtoListar.jsp',
				    controller: 'produtoController'
			      })
			      .when('/login', {
			    	  templateUrl: '/app/views/loginForm.jsp',
			    	  controller: 'sistemaController'
			      })
			      .otherwise({
			    	  redirectTo: "/"
			      })
 		}])
 		
// .run( function($rootScope, $location) {
//	 
//    // register listener to watch route changes
//    $rootScope.$on( "$routeChangeStart", function(event, next, current) {
//      if ( $rootScope.loggedUser == null ) {
//        // no logged user, we should be going to #login
//        if ( next.templateUrl != "/loginForm.jsp" ) {
//          // already going to #login, no redirect needed
//        	 // not going to #login, we should redirect now
//            $location.path( "/login" );
//        }
//      }         
//    })
// })
 		
 .controller('indexController', function ($scope, $location) {
	  
	$scope.indexController = {};
	
	$scope.LOGOUT = -1;
	$scope.HOME = 0;00
	$scope.MARCA_CADASTRAR = 1;
	$scope.MARCA_LISTAR = 2;
	$scope.PRODUTO_CADASTRAR = 3;
	$scope.PRODUTO_LISTAR = 4;

    $scope.indexController.onClick = function(index) {	
    	if (index == $scope.LOGOUT) {
    		$location.path("/logout")
    	}  else if (index == $scope.HOME) {
    		$location.path("/index")
    	} else if (index == $scope.MARCA_CADASTRAR) {
    		$location.path("/marca/cadastrar")
    	} else if (index == $scope.MARCA_LISTAR) {
    		$location.path("/marca/listar")
    	} else if (index == $scope.PRODUTO_CADASTRAR) {
    		$location.path("/produto/cadastrar")
    	} else if (index == $scope.PRODUTO_LISTAR) {
    		$location.path("/produto/listar")
    	}
    };  
	
  })
  
  /**
     *  PRODUTO
     */
  
  .controller('produtoController', function ($scope, $mdDialog, $location) {
	  
	$scope.produtoController = {};
 
    $scope.produtoController.initInsert = function () {
    	$scope.produtoController.cadastrar = {};
    	$scope.produtoController.cadastrar.marca = {};
    	$scope.produtoController.findAllMarca();
    };
    
    $scope.produtoController.initList = function () {
    	$scope.produtoController.findAllMarca();
    	$scope.scopeModal = {};
    	$scope.scopeModal.produto = {};
    	
    	$scope.iconAlterar = "/app/resources/icons/cake.svg";
    	$scope.iconDeletar = "/app/resources/icons/android.svg";
    	$scope.templateAlterarModal = "/app/views//marca/marcaAlterar.jsp";
    	$scope.templateDeletarModal = "/app/views/marca/marcaDeletar.jsp";
    	
    	$scope.produtoController.produtos = {};
    	$scope.produtoController.findAllproduto();
    };
       
    $scope.produtoController.findAllProduto = function(){
    	produtoServiceDwr.findAllProduto({
  		  callback : function(data){  			  
  			  $scope.produtoController.produtos = data;
  			  $scope.$apply();  			  
  		  },
  		  errorHandler : function(){	
  		  }
  		 });
    };
    
    $scope.produtoController.findAllMarca = function(){
    	marcaServiceDwr.findAllMarca({
  		  callback : function(data){  			  
  			  $scope.produtoController.marcas = data;
  			  $scope.$apply();  			  
  		  },
  		  errorHandler : function(){	
  		  }
  		 });
    };
    
    $scope.produtoController.alterarModal = function(ev, produto) {
    	$scope.produtoController.showAdvanced(ev, produto, $scope.templateAlterarModal);
    }
    
    $scope.produtoController.deletarModal = function() {
    	$scope.produtoController.showAdvanced(ev, produto, $scope.templateDeletarModal);
    }
    
    $scope.produtoController.showAdvanced = function(ev, produto, template) {
        $mdDialog.show({
          controller: DialogController,
          templateUrl: template,
          targetEvent: ev,
          locals: {
        	  produto: produto
          }
        })
        .then(function(produtoAlterado) {
        	if(produtoAlterado.descricao != produto.descricao) {
        		$scope.produtoController.alterProduto(produtoAlterado);
        		$scope.produtoController.initList();
        	}
         	
        }, function() {
//        	alert('Modal Cancelada pelo usuario.');
        });
      };
      
      function DialogController($scope, $mdDialog, produto) {
    	  $scope.produto = angular.copy(produto);
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
    
    $scope.produtoController.saveProduto = function () {
		 // Retrieve value of text inputs
		 var produto = $scope.produtoController.cadastrar.produto;
		 produto.marca = $scope.produtoController.cadastrar.cbMarca;
		  
		 // Pass two numbers, a callback function, and error function
		 produtoServiceDwr.saveProduto(produto, {
		  callback : function(data){
			  $scope.produtoController.cadastrar.resultado = data.descricao + " Salvo com sucesso!";
			  alert($scope.produtoController.cadastrar.resultado);
		  },
		  errorHandler : function(){
			// Show a popup message
				 alert("Não foi possivel cadastrar Marca");
		  }
		 });
    };
    
    /**
     * 
     */
    $scope.produtoController.alterProduto = function (produto) {
		  
		 // Pass two numbers, a callback function, and error function
    	produtoServiceDwr.alterProduto(produto, {
		  callback : function(data){
			  $scope.produtoController.alterar.resultado = data.descricao + " Alterado com sucesso!";
			  alert($scope.produtoController.alterar.resultado);
		  },
		  errorHandler : function(){
			// Show a popup message
				 alert("Não foi possivel cadastrar Marca");
		  }
		 });	 
   };
  })
 		

  /**
     *  MARCA
     */
  
  .controller('marcaController', function ($scope, $mdDialog, $location) {
	  
	$scope.marcaController = {};
 
    $scope.marcaController.initInsert = function () {
    	$scope.marcaController.cadastrar = {};
    	$scope.marcaController.cadastrar.marca = {};
    };
    
    $scope.marcaController.initList = function () {
    	$scope.scopeModal = {};
    	$scope.scopeModal.marca = {};
    	
    	$scope.iconAlterar = "/app/resources/icons/cake.svg";
    	$scope.iconDeletar = "/app/resources/icons/android.svg";
    	$scope.templateAlterarModal = "/app/views//marca/marcaAlterar.jsp";
    	$scope.templateDeletarModal = "/app/views/marca/marcaDeletar.jsp";
    	
    	$scope.marcaController.marcas = {};
    	$scope.marcaController.findAllMarca();
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
        	if(marcaAlterada.descricao != marca.descricao) {
        		$scope.marcaController.alterMarca(marcaAlterada);
        		$scope.marcaController.initList();
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
   };
  })