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

	<div  ng-controller="homeController" layout="column" ng-init="homeController.init()">
	    
		<md-toolbar>
		
			<div layout="row">
			
				<div style="float:left">
				      <md-button ng-click="homeController.onClickTab(HOME)">
				      		<h2 class="md-toolbar-tools">HOME</h2>
				      </md-button>
				</div>
			      
				<div style="float:right">
					   <md-button ng-click="homeController.onClickTab(LOGOUT)" >
					      		<h2 class="md-toolbar-tools">logout</h2>
					   </md-button>
				</div>
				
			</div>
			
	    </md-toolbar>
    
     	<ng-view></ng-view>

		 <md-tabs md-selected="homeController.selectedTabIndex" flex>
			    <md-tab ng-click="homeController.onClickTab($index)" ng-repeat="tab in homeController.tabs " ng-disabled="tab.disabled" label="{{tab.title}}">
			   	</md-tab>
		 </md-tabs>
	</div>
</body>
</html>
