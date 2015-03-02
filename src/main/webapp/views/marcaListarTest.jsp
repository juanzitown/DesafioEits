<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Listar Marca</title>

<html>
<head>
 	
    
	<!-- Angular Material CSS -->
	<link rel="stylesheet" href="/app/views/angular-material/angular-material.css">
   
   	<!-- Angular JS -->
    <script src="/app/views/angular/angular.js"></script>
    <script src="/app/views/angular-aria/angular-aria.js"></script>
    <script src="/app/views/angular-animate/angular-animate.js"></script>
    <script src="/app/views/angular/angular-message.js"></script>
    
    <!-- Angular Material JS-->
    <script src="/app/views/angular-material/angular-material.js"></script>
    
    <!-- CSS -->
    <script sr="/app/views/css/test.css"></script>
    
    <!-- JS -->
    <script src="/app/views/js/test.js"></script>
    
</head>
<body ng-app="test">

<div ng-controller="AppCtrl">
  <div ng-cloak layout="column" layout-margin >
    <p>The simplest way to display a single SVG icon is by referencing it by URL:</p>
    <p>
        <md-icon md-svg-src="{{ insertDriveIconURL }}"
                 alt="Insert Drive Icon">
        </md-icon>
    </p>
    <p>Style the icon size and color with CSS:</p>
    <p>
      <md-icon md-svg-src="img/icons/cake.svg"            class="s24" alt="Cake"    ></md-icon>
      <md-icon md-svg-src="{{ getAndroid() }}"            class="s36" alt="Android "></md-icon>
      <md-icon md-svg-src="img/icons/addShoppingCart.svg" class="s48" alt="Cart"    ></md-icon>
    </p>
</div>
</div>
 
</div>

</body>
</html>