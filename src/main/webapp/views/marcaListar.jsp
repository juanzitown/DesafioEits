<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Listar Marca</title>

<html>
<head>

<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/angular_material/0.7.1/angular-material.min.css">
 
	<script	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.6/angular.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.6/angular-animate.min.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.6/angular-aria.min.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/angular_material/0.7.1/angular-material.min.js"></script>
	<script src="/app/views/js/message.js"></script>
</head>
<body>

<div layout="row" layout-margin>
 <md-grid-list md-cols="2" md-row-height="fit" style="height: 20px;">
  <md-grid-tile>Id</md-grid-tile>
  <md-grid-tile>Descrição</md-grid-tile>  
</md-grid-list>
</div>

<div ng-repeat="marca in marcas" layout ="column" layout-margin>
	<div layout="row" layout-margin flex>
	  <md-grid-list md-cols="2" md-row-height="fit" style="height: 20px;">
	  <md-grid-tile>{{marca.id}}</md-grid-tile>
	  <md-grid-tile>{{marca.descricao}}</md-grid-tile>     
	  </md-grid-list>
	</div>
</div>

</body>
</html>