<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<!-- 	<!-- Angular Material CSS -->
<!-- 	<link rel="stylesheet" href="/app/views/angular-material/angular-material.css"> -->
	
<!-- 	<!-- APP CSS-->
<!-- 	<link rel="stylesheet" href="/app/views/css/marca.css"> -->

<!--     DWR -->
<!--    	<script type='text/javascript' src="/app/dwr/engine.js"></script> -->
<!--    	<script type='text/javascript' src="/app/dwr/util.js"></script> -->
<!--    	<script type="text/javascript" src="/app/dwr/interface/marcaServiceDwr.js"></script> -->
   
<!--    	Angular JS -->
<!--     <script src="/app/views/angular/angular.js"></script> -->
<!--     <script src="/app/views/angular/angular-message.js"></script> -->
<!--     <script src="/app/views/angular-aria/angular-aria.js"></script> -->
<!--     <script src="/app/views/angular-animate/angular-animate.js"></script> -->
    
    
<!--     Angular Material JS -->
<!--     <script src="/app/views/angular-material/angular-material.js"></script> -->
	
<!-- 	<!-- APP JS -->
<!-- 	<script src="/app/views/js/marca.js"></script> -->
	
</head>
 <body ng-app="moduloMarca">
 
	<div ng-controller="marcaController" layout="column" ng-init="marcaController.init()" layout-margin="center">
	    
	  <md-tabs md-selected="marcaController.selectedTabIndex" flex>
	    <md-tab md-on-select="marcaController.onClickTab($index)" ng-repeat="tab in marcaController.tabs " ng-disabled="tab.disabled" label="{{tab.title}}">
	    
		    <div ng-if="tab.id == 1" ng-include="'/app/views/marcaCadastrar.jsp'"></div>
		    <div ng-if="tab.id == 2" ng-include="'/app/views/marcaListar.jsp'"></div>
		    <div ng-if="tab.id == 3" ng-include="'/app/views/marcaAlterar.jsp'"></div>
		    
	   	</md-tab>
	  </md-tabs>
	</div>
	
</body>
</html>