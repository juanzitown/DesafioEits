<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html ng-app>
<head>
	<title>Hello AngularJS</title>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js"></script>
	<script src="hello.js"></script>
</head>

<body>
	<h1>Hello world!</h1>

	<div ng-controller="Hello">
		<p>The ID is {{greeting.id}}</p>
		<p>The content is {{greeting.content}}</p>
	</div>

	<P>The time on the server is ${serverTime}.</P>
</body>
</html>
