<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Hello AngularJS</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js"></script>
</head>

<script type="text/javascript">
	function personController($scope) {
// 	    $scope.firstName= "John";
// 	    $scope.lastName= "Doe";
	}
</script>

<body>
	<h1>Hello world!</h1>

	<div data-ng-app="" data-ng-controller="personController">
		<p> Teste angularJS >>>>>></p>
		First Name: <input type="text" data-ng-model="firstName"><br>
		Last Name: <input type="text" data-ng-model="lastName"><br> <br>
		Full Name: {{firstName + " " + lastName}}

	</div>

	<P>The time on the server is ${serverTime}.</P>
</body>
</html>
