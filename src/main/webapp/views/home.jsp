<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Hello AngularJS</title>
	<script	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js"></script>
	<script	src="views/js/hello.js"></script>
</head>


<body ng-app="desafio">
	<h1>Hello world!</h1>

	<div  data-ng-controller="personController">
		<p> Teste angularJS >>>>>></p>
		First Name: <input type="text" data-ng-model="firstName"><br>
		Last Name: <input type="text" data-ng-model="lastName"><br> <br>
		Full Name: {{firstName + " " + lastName}}

	</div>

	<P>The time on the server is ${serverTime}.</P>
</body>
</html>
