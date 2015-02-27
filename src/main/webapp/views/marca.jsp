<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
	<!-- Angular Material CSS -->
	<link rel="stylesheet" href="/app/views/angularMaterial/angular_bower_material.css">

    <!-- DWR -->
   	<script type='text/javascript' src="/app/dwr/engine.js"></script>
   	<script type='text/javascript' src="/app/dwr/util.js"></script>
   	<script type="text/javascript" src="/app/dwr/interface/marcaServiceDwr.js"></script>
   
   	<!-- Angular JS -->
    <script src="/app/views/angularjs/angular.js"></script>
    <script src="/app/views/angularjs/angular-aria.js"></script>
    <script src="/app/views/angularjs/angular-animate.js"></script>
    <script src="/app/views/js/angular-message.js"></script>
    
    <!-- Angular Material JS-->
    <script src="/app/views/angularMaterial/angular_bower_material.js"></script>
	
	<!-- APP CSS-->
	<link rel="stylesheet" href="/app/views/css/marca.css">
	
	<!-- APP JS -->
	<script src="/app/views/js/marca.js"></script>
	
</head>
 <body ng-app="marca">
	<div ng-controller="marcaController" class="sample" layout="column">
	    
	  <md-tabs md-selected="selectedIndex" flex>
	    <md-tab ng-repeat="tab in tabs" ng-disabled="tab.disabled" label="{{tab.title}}">
	    <div ng-if="tab.id == 1" ng-init="changeState(INSERT_STATE)" ng-include="'/app/views/marcaCadastrar.jsp'"></div>
	    <div ng-if="tab.id == 2" ng-init="changeState(LIST_STATE)" ng-include="'/app/views/marcaListar.jsp'"></div>
	    <div ng-if="tab.id == 3" ng-init="changeState(ALTER_STATE)" ng-include="'/app/views/marcaAlterar.jsp'"></div>
	    
	    <div class="demo-tab tab{{$index%4}}" layout="column" layout-align="space-around center">
	    
	        <div ng-bind="tab.content" >
	     
	        </div>
	        
	    </div>
	    </md-tab>
	  </md-tabs>
	</div>
</body>
</html>