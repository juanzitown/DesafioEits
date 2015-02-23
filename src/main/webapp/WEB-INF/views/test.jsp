<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 
   <script type='text/javascript' src="/app/dwr/engine.js"></script>
   <script type='text/javascript' src="/app/dwr/util.js"></script>
 <script type="text/javascript" src="/app/dwr/interface/marcaServiceDwr.js"></script>
  
 <title>Spring MVC - DWR Integration</title>
</head>
<body>
 
<h3>Spring MVC - DWR Integration</h3>
<h4>Desafio Eits</h4>
 
Cadastrar Marca
<div style="border: 1px solid #ccc; width: 250px;">
 Descricao: <input id="descricao" type="text" size="20">
 
 <input type="submit" value="Cadastrar" onclick="saveMarca()" />
 
 Resultado: <span id="marcaDescricao"></span>
</div>
 
<script type="text/javascript">
 // Retrieves the matching value
 // Delegates to the dwrService
 function saveMarca() {
  // Retrieve value of text inputs
  var descricao = dwr.util.getValue("descricao");
   
  // Pass two numbers, a callback function, and error function
  marcaServiceDwr.saveMarca(descricao, {
   callback : handleAddSuccess,
   errorHandler : handleAddError
  });
 }
 
 // data contains the returned value
 function handleAddSuccess(data) {
	 console.log(data);
  // Assigns data to result id
  dwr.util.setValue("marcaDescricao", data.descricao+" salvo com Sucesso!");
 }
 
 function handleAddError() {
  // Show a popup message
  alert("Não foi possivel cadastrar Marca");
 }
</script>
 
</body>
</html>