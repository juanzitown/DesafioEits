<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 
 	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/angular_material/0.7.1/angular-material.min.css">
 
   	<script type='text/javascript' src="/app/dwr/engine.js"></script>
   	<script type='text/javascript' src="/app/dwr/util.js"></script>
   	<script type="text/javascript" src="/app/dwr/interface/marcaServiceDwr.js"></script>
   
   	<script	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.6/angular.min.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.6/angular-animate.min.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.6/angular-aria.min.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/angular_material/0.7.1/angular-material.min.js"></script>
	<script src="views/js/message.js"></script>
	
	<script src="views/js/cadastrarMarca.js"></script>
  
<title>Spring MVC - DWR Integration</title>
 
<div ng-app="marcaForm" ng-controller="cadastrarMarca"  style="width: 30%; background: #999; margin:0 auto; padding:10px">
	<br>
	<div style="width:100%; background: #FFF">
		Cadastrar Marca
	</div>
	<br>
	<br>
	<div layout layout-sm="column"  style="width: 50%; ">
		
        <md-input-container flex >
        <label>Descrição</label>
          <input ng-model="marca.descricao" placeholder="Descrição da marca" style="width:50%">
        </md-input-container> 
     </div>
     
     <md-button class="md-raised" ng-click="saveMarca()">Cadastrar</md-button>
     <br><br><br>
     <label>{{resultado}}</label>
</div>
 
<script type="text/javascript">
 
</script>
 
</body>
</html>