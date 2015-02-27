<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
	<!-- Angular Material CSS -->
	<link rel="stylesheet" href="/app/views/angularMaterial/angular_bower_material.css">

    <!-- DWR -->
   	<script type='text/javascript' src="/app/dwr/engine.js"></script>
   	<script type='text/javascript' src="/app/dwr/util.js"></script>
   	<script type="text/javascript" src="/app/dwr/interface/marcaServiceDwr.js"></script>
   
   	<!-- Angular JS -->
    <script src="/app/views/angularjs/angular.js"></script>
    <script src="/app/views/angularjs/angular-aria.js"></script>
    <script src="/app/views/angularjs/angular-animate.js"></script>
    <script src="/app/views/angularjs/angular-message.js"></script>
    
    <!-- Angular Material JS-->
    <script src="/app/views/angularMaterial/angular_bower_material.js"></script>
	
	<!-- APP CSS-->
	<link rel="stylesheet" href="/app/views/css/marca.css">
	
	<!-- APP JS -->
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
	
	<div>
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
</body>
</html>