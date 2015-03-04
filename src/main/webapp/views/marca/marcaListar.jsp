<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Listar Marca</title>

<html>
<head>

</head>
<body>

<div layout="row" layout-margin flex>
	<label>Id</label>
	<label>Descrição</label>  
</div>

<div ng-repeat="marca in marcaController.marcas" layout ="column" layout-margin>
	<div layout="row" layout-margin flex>
	  	<div>
		  <label>{{marca.id}}</label>
		  <label>{{marca.descricao}}</label>
		  
		  <md-button ng-click="marcaController.alterarModal($event, marca)" class="md-raised md-primary">
		  	<md-icon md-svg-src='{{iconAlterar}}' alt="Alterar marca"></md-icon>
		  </md-button>
		  
		  <md-button ng-click="marcaController.deletarModal($event, marca)" class="md-raised md-primary">
		  	<md-icon md-svg-src='{{iconDeletar}}' alt="Deletar marca"></md-icon>
		  </md-button>
		</div>
	</div>
</div>

</body>
</html>