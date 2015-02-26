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
	<div layout layout-sm="column"  style="width: 50%; ">
		
        <md-input-container flex >
        <label>Descrição</label>
          <input ng-model="marcaController.cadastrar.marca.descricao" placeholder="Descrição da marca" style="width:50%">
        </md-input-container> 
     </div>
     
     <md-button class="md-raised" ng-click="saveMarca()">Cadastrar</md-button>
     <br><br><br>
     <label>{{marcaController.cadastrar.resultado}}</label>
</div>
 
</body>
</html>