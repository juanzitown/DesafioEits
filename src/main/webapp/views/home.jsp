<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>

<title>HOME DESAFIO</title>
	<!-- Angular Material CSS -->
	<link rel="stylesheet" href="/app/views/angular-material/angular-material.css">
	
	<!-- APP CSS-->
	<link rel="stylesheet" href="/app/views/css/home.css">
	<link rel="stylesheet" href="/app/views/css/marca.css">
	
   	<!-- Angular JS -->
    <script src="/app/views/angular/angular.js"></script>
    <script src="/app/views/angular/angular-route.js"></script>
    <script src="/app/views/angular/angular-message.js"></script>
    <script src="/app/views/angular-aria/angular-aria.js"></script>
    <script src="/app/views/angular-animate/angular-animate.js"></script>
    
    <!-- Angular Material JS-->
    <script src="/app/views/angular-material/angular-material.js"></script>
    
    <!-- DWR -->
   	<script type='text/javascript' src="/app/dwr/engine.js"></script>
   	<script type='text/javascript' src="/app/dwr/util.js"></script>
   	<script type="text/javascript" src="/app/dwr/interface/marcaServiceDwr.js"></script>
   	
	
	<!-- APP JS -->
	<script src="/app/views/js/home.js"></script>
	
</head>


<body ng-app="desafio">

<div>
	<div layout="column">
		<md-toolbar>
			<div ng-controller="indexController" ng-init="indexController.init()" layout layout-align="center end">
				<md-button ng-click="indexController.onClick(LOGOUT)" >logout</md-button>
			</div>
	    </md-toolbar>
			<div layout="row">
				<md-sidenav class="md-sidenav-left md-whiteframe-z2" md-component-id="left"  layout="vertical" layout-fill md-is-locked-open="true">
		           <md-toolbar class="md-theme-indigo">
		               <h1 class="md-toolbar-tools" layout-align="center">Desafio</h1>
		           </md-toolbar>
		           
		           <div layout="column">
		           		
				               <md-button ng-click="produto = !produto">
				                   Produto
				               </md-button>

						               	<md-button ng-show="produto">CADASTRAR</md-button>
						               	<md-button ng-show="produto">LISTAR</md-button>
					    
					           <div ng-controller="marcaController" ng-init="marcaController.init()" layout="column">
				               			<md-button ng-click="marca = !marca">MARCA</md-button>
				               		
						               <md-button ng-click="marcaController.initInsert()" ng-show="marca">
							                  CADASTRAR
							           </md-button>
							           <md-button ng-click="marcaController.initList()" ng-show="marca">
							                  LISTAR
							           </md-button>
							   </div>
					
				               <md-button ng-click="usuario = !usuario">
				                   Usuario
				               </md-button>
				               
				               		   <md-button ng-show="usuario">
							                  CADASTRAR
							           </md-button>
							           <md-button ng-show="usuario">
							                  LISTAR
							           </md-button>    
		           </div>

				</md-sidenav>
				
			<div ng-view></div>     
		</div>
	</div>
</div>

</body>
</html>
