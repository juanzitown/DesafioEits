<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/angular_material/0.7.1/angular-material.min.css">
 	<link rel="stylesheet" href="/app/views/css/marca.css">
    
   	<script type='text/javascript' src="/app/dwr/engine.js"></script>
   	<script type='text/javascript' src="/app/dwr/util.js"></script>
   	<script type="text/javascript" src="/app/dwr/interface/marcaServiceDwr.js"></script>
   
   	<script	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.6/angular.min.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.6/angular-animate.min.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.6/angular-aria.min.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/angular_material/0.7.1/angular-material.min.js"></script>
	<script src="/app/views/js/message.js"></script>
	
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