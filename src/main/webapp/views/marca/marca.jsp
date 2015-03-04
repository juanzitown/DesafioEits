<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>	
</head>

 <body>
	<div ng-controller="marcaController" layout="column" ng-init="marcaController.init()" layout-margin="center">
		  <md-tabs md-selected="marcaController.selectedTabIndex" flex>
			    <md-tab ng-click="marcaController.onClickTab($index)" ng-repeat="tab in marcaController.tabs " ng-disabled="tab.disabled" label="{{tab.title}}">
			   	</md-tab>
		  </md-tabs>
	</div>
</body>

</html>