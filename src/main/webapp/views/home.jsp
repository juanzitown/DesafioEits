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

	<md-toolbar>
      <h2 class="md-toolbar-tools">
        <span>HOME</span>
      </h2>
    </md-toolbar>
    
     <ng-view></ng-view>

	<div  ng-controller="homeController" layout="column" ng-init="homeController.init()">
	    
	  <md-tabs md-selected="homeController.selectedTabIndex" flex>
	    
		    <md-tab md-on-select="homeController.onClickTab($index)" ng-repeat="tab in homeController.tabs " ng-disabled="tab.disabled" label="{{tab.title}}">
		    		
<!-- 		    		<a ng-href="#/marca">view</a> -->
	<!-- 		    <div ng-if="tab.id == 0" ng-include="'/app/views/produto.jsp'"></div> -->
	<!-- 		    <div ng-if="tab.id == 1" ng-include="'/app/views/marca.jsp'"></div> -->
	<!-- 		    <div ng-if="tab.id == 2" ng-include="'/app/views/loginForm.jsp'"></div> -->
		        
		   	</md-tab>
	   	
	  </md-tabs>
	</div>
</body>
</html>
