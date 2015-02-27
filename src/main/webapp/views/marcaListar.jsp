<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Listar Marca</title>

<html>
<head>

</head>
<body>

<div layout="row" layout-margin>

 <md-grid-list md-cols="2" md-row-height="fit" style="height: 20px;">
  <md-grid-tile>Id</md-grid-tile>
  <md-grid-tile>Descrição</md-grid-tile>  
</md-grid-list>
</div>

<div ng-repeat="marca in marcaController.marcas" layout ="column" layout-margin>
	<div layout="row" layout-margin flex>
	  <md-grid-list md-cols="2" md-row-height="fit" style="height: 20px;">
	  <md-grid-tile>{{marca.id}}</md-grid-tile>
	  <md-grid-tile>{{marca.descricao}}</md-grid-tile>     
	  </md-grid-list>
	</div>
</div>

</body>
</html>