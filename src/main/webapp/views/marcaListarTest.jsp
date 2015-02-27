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
<body ng-app="gridListDemo1">

<div ng-controller="AppCtrl">
  <md-grid-list
        md-cols-sm="1" md-cols-md="2" md-cols-gt-md="6"
        md-row-height-gt-md="1:1" md-row-height="2:2"
        md-gutter="12x" md-gutter-gt-sm="8px" >
    <md-grid-tile class="gray"
        md-rowspan="3" md-colspan="2">
      <md-grid-tile-footer>
        <h3>#1: (3r x 2c)</h3>
      </md-grid-tile-footer>
    </md-grid-tile>
    <md-grid-tile class="green">
      <md-grid-tile-footer>
        <h3>#2: (1r x 1c)</h3>
      </md-grid-tile-footer>
    </md-grid-tile>
    <md-grid-tile class="yellow">
      <md-grid-tile-footer>
        <h3>#3: (1r x 1c)</h3>
      </md-grid-tile-footer>
    </md-grid-tile>
    <md-grid-tile class="blue"
        md-rowspan="2">
      <md-grid-tile-footer>
        <h3>#4: (2r x 1c)</h3>
      </md-grid-tile-footer>
    </md-grid-tile>
    <md-grid-tile class="red"
        md-rowspan="2" md-colspan="2">
      <md-grid-tile-footer>
        <h3>#5: (2r x 2c)</h3>
      </md-grid-tile-footer>
    </md-grid-tile>
    <md-grid-tile class="green"
        md-rowspan="2" >
      <md-grid-tile-footer>
        <h3>#6: (2r x 1c)</h3>
      </md-grid-tile-footer>
    </md-grid-tile>
  </md-grid-list>
</div>
 
</div>

</body>
</html>