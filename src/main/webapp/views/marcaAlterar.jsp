<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
<title>Spring MVC - DWR Integration</title>
 
<div style="width: 30%; background: #999; margin:0 auto; padding:10px">
	<br>
	<div style="width:100%; background: #FFF">
		MARCA
	</div>
	<br>
	<br>
	
 <md-select ng-model="cbMarca" placeholder="Descrição da Marca">
    <md-option ng-value="marca" ng-repeat="marca in marcas">{{ marca.descricao }}</md-option>
 </md-select>
	
<div layout="column" layout-align="center center" style="min-height: 100px;">
</div>

	<div layout layout-sm="row"  style="width: 50%; style:min-height:100px">
		
		<md-input-container flex >
	        <label>Id</label>
	        <label>{{cbMarca.id}}</label>
        </md-input-container> 
    </div>
    <div>
    	<md-input-container flex >
        <label>Descrição</label>
          <input ng-model="cbMarca.descricao" placeholder="Descrição da Marca" style="width:50%" value="{{cbMarca.descricao}}">
        </md-input-container> 
    </div>
     
     <md-button class="md-raised" ng-click="alterMarca()">Alterar</md-button>
     <br><br><br>
     <label>{{resultadoAlterar}}</label>
</div>
 
</body>
</html>