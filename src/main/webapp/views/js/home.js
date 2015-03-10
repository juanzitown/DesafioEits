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
			      .when('/usuario/cadastrar', {
				    templateUrl: '/app/views/usuario/usuarioCadastrar.jsp',
				    controller: 'usuarioController'
			      })
			      .when('/usuario/listar', {
				    templateUrl: '/app/views/usuario/usuarioListar.jsp',
				    controller: 'usuarioController'
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
	$scope.HOME = 0;
	$scope.MARCA_CADASTRAR = 1;
	$scope.MARCA_LISTAR = 2;
	$scope.PRODUTO_CADASTRAR = 3;
	$scope.PRODUTO_LISTAR = 4;
	$scope.USUARIO_CADASTRAR = 5;
	$scope.USUARIO_LISTAR = 6;
	
	$scope.DELETAR = 10;
	$scope.ALTERAR = 11;
	
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
    	} else if (index == $scope.USUARIO_CADASTRAR) {
    		$location.path("/usuario/cadastrar")
    	} else if (index == $scope.USUARIO_LISTAR) {
    		$location.path("/usuario/listar")
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
    	$scope.produtoController.produtos = {};
    	$scope.scopeModal = {};
    	$scope.scopeModal.produto = {};
    
    	$scope.produtoController.findAllProduto();
    	
    	$scope.iconAlterar = "/app/resources/icons/cake.svg";
    	$scope.iconDeletar = "/app/resources/icons/android.svg";
    	$scope.templateAlterarModal = "/app/views/produto/produtoAlterar.jsp";
    	$scope.templateDeletarModal = "/app/views/produto/produtoDeletar.jsp";
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
    	produto.op = $scope.ALTERAR;
    }
    
    $scope.produtoController.deletarModal = function(ev, produto) {
    	$scope.produtoController.showAdvanced(ev, produto, $scope.templateDeletarModal);
    	produto.op = $scope.DELETAR;
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
        .then(function(produtoResposta) {
        	if(produtoResposta.op == $scope.DELETAR) {
        		delete produtoResposta.op;
        		delete produtoResposta.marca.$$mdSelectId;
        		$scope.produtoController.deleteProduto(produtoResposta);
        	}
        	else if (produtoResposta.op == $scope.ALTERAR) {
	        	if(produtoResposta.descricao != produto.descricao) {
	        		$scope.produtoController.alterProduto(produtoResposta);
	        	}
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
			  alert(data.descricao + " Salvo com sucesso!");
		  },
		  errorHandler : function(){
			// Show a popup message
				 alert("Não foi possivel cadastrar Produto");
		  }
		 });
    };
    
    $scope.produtoController.alterProduto = function (produto) {
		  
		 // Pass two numbers, a callback function, and error function
    	produtoServiceDwr.alterProduto(produto, {
		  callback : function(data){
			  alert(data.descricao + " Alterado com sucesso!");
		  },
		  errorHandler : function(){
			// Show a popup message
				 alert("Não foi possivel alterar Produto");
		  }
		 });	 
   };
   
   $scope.produtoController.deleteProduto = function (produto) {
		  
		 // Pass two numbers, a callback function, and error function
  	produtoServiceDwr.deleteProduto(produto, {
		  callback : function(data){
			  alert("Deletado com sucesso!");
		  },
		  errorHandler : function(){
			// Show a popup message
				 alert("Não foi possivel deletar Produto");
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
    	marca.op = $scope.ALTERAR;
    }
    
    $scope.marcaController.deletarModal = function(ev, marca) {
    	$scope.marcaController.showAdvanced(ev, marca, $scope.templateDeletarModal);
    	marca.op = $scope.DELETAR;
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
        .then(function(marcaResposta) {
        	if(marcaResposta.op == $scope.DELETAR) {
        		$scope.marcaController.deleteMarca(marcaResposta)
        	}
        	else if (marcaResposta.op == $scope.ALTERAR) {
	        	if(marcaResposta.descricao != marca.descricao) {
	        		$scope.marcaController.alterMarca(marcaResposta);
	        		$scope.marcaController.initList();
	        	}
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
			  alert(data.descricao + " Salvo com sucesso!");
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
			  alert(data.descricao + " Alterado com sucesso!");
		  },
		  errorHandler : function(){
			// Show a popup message
				 alert("Não foi possivel alterar Marca");
		  }
		 });	 
   };
   
   $scope.marcaController.deleteMarca = function (marca) {
		  
		 // Pass two numbers, a callback function, and error function
		 marcaServiceDwr.deleteMarca(marca, {
		  callback : function(data){
			  alert("Deletado com sucesso!");
		  },
		  errorHandler : function(){
			// Show a popup message
				 alert("Não foi possivel deletar Marca, existe algum produto cadastrado com esta marca");
		  }
		 });	 
 };
   
  })
  
  
    /**
     *  USUARIO
     */
  
  .controller('usuarioController', function ($scope, $mdDialog, $location) {
	  
	$scope.usuarioController = {};
 
    $scope.usuarioController.initInsert = function () {
    	$scope.usuarioController.roles = {};
    	$scope.usuarioController.cadastrar = {};
    	$scope.usuarioController.cadastrar.usuario = {};
    	$scope.usuarioController.findAllRole();
    };
    
    $scope.usuarioController.initList = function () {
    	$scope.usuarioController.usuarios = {};
    	$scope.usuarioController.findAllUsuario();
    	
    	$scope.usuarioController.roles = {};
    	$scope.scopeModal = {};
    	$scope.scopeModal.usuario = {};
    	
    	$scope.iconAlterar = "/app/resources/icons/cake.svg";
    	$scope.iconDeletar = "/app/resources/icons/android.svg";
    	$scope.templateAlterarModal = "/app/views/usuario/usuarioAlterar.jsp";
    	$scope.templateDeletarModal = "/app/views/usuario/usuarioDeletar.jsp";
    };
       
    $scope.usuarioController.findAllUsuario = function(){
    	usuarioServiceDwr.findAllUsuario({
  		  callback : function(data){  			  
  			  $scope.usuarioController.usuarios = data;
  			  $scope.$apply();  			  
  		  },
  		  errorHandler : function(){	
  		  }
  		 });
    };
    
    $scope.usuarioController.findAllRole = function(){
    	roleServiceDwr.findAllRole({
  		  callback : function(data){  			  
  			  $scope.usuarioController.roles = data;
  			  $scope.$apply();  			  
  		  },
  		  errorHandler : function(){	
  		  }
  		 });
    };
    
    $scope.usuarioController.alterarModal = function(ev, usuario) {
    	$scope.usuarioController.showAdvanced(ev, usuario, $scope.templateAlterarModal);
    }
    
    $scope.usuarioController.deletarModal = function() {
    	$scope.usuarioController.showAdvanced(ev, usuario, $scope.templateDeletarModal);
    }
    
    $scope.usuarioController.showAdvanced = function(ev, usuario, template) {
        $mdDialog.show({
          controller: DialogController,
          templateUrl: template,
          targetEvent: ev,
          locals: {
        	  usuario: usuario
          }
        })
        .then(function(usuarioAlterado) {
        	if(usuarioAlterado.nome != usuario.nome) {
        		$scope.usuarioController.alterUsuario(usuarioAlterado);
        	}
         	
        }, function() {
//        	alert('Modal Cancelada pelo usuario.');
        });
      };
      
      function DialogController($scope, $mdDialog, usuario) {
    	  $scope.usuario = angular.copy(usuario);
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
    
    $scope.usuarioController.saveUsuario = function () {
		 // Retrieve value of text inputs
		 var usuario = $scope.usuarioController.cadastrar.usuario;
		 usuario.roleUsuario = $scope.usuarioController.cadastrar.cbRole;
		  
		 // Pass two numbers, a callback function, and error function
		 usuarioServiceDwr.saveUsuario(usuario, {
		  callback : function(data){
			  alert(data.nome + " Salvo com sucesso!");
		  },
		  errorHandler : function(){
			// Show a popup message
				 alert("Não foi possivel cadastrar Usuario");
		  }
		 });
    };
    
    $scope.usuarioController.alterUsuario = function (usuario) {
		  
		 // Pass two numbers, a callback function, and error function
    	usuarioServiceDwr.alterUsuario(usuario, {
		  callback : function(data){
			  alert(data.nome + " Alterado com sucesso!");
		  },
		  errorHandler : function(){
			// Show a popup message
				 alert("Não foi possivel alterar Usuario");
		  }
		 });	 
   };
  })