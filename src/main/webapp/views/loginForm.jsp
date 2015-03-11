<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Login Page</title>

<style>
.error {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
}

.msg {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}

#login-box {
	width: 300px;
	padding: 20px;
	margin: 100px auto;
	background: #fff;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border: 1px solid #000;
}
</style>
</head>


<body onload='document.formLogin.username.focus();'>

	<h1>Spring Security Custom Login Form (XML)</h1>

	<div ng-controller="loginController">

		<h3>Login with Username and Password</h3>

		<form name="formLogin" action="j_spring_security_check" method="POST">
		
			<md-input-container flex >
			     <label>Username</label>
			     <input ng-model="usuario.username" name="j_username">
		    </md-input-container> 
		    
		    <md-input-container flex >
			     <label>Password</label>
			     <input ng-model="usuario.password" name="j_password">
		    </md-input-container>
	     
			<md-button class="md-raised" ng-click="loginController.logar(usuario)" type="submit">Cadastrar</md-button>

		</form>
	</div>

</body>
</html>