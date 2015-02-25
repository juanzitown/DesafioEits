<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Login Page</title>

<script type='text/javascript' src="/app/dwr/engine.js"></script>
<script type='text/javascript' src="/app/dwr/util.js"></script>
<script type="text/javascript" src="/app/dwr/interface/usuarioServiceDwr.js"></script>
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

<script type="text/javascript">

	function login() {
		var username = dwr.util.getValue("username");
		var password = dwr.util.getValue("password");
		
		usuarioServiceDwr.findUser(username, password, {callback : handleAddSuccess, errorHandler : handleAddError});
		 
		 // data contains the returned value
		 function handleAddSuccess(data) {
			 console.log(data);
		  // Assigns data to result id
		  dwr.util.setValue("resultado", " logado com Sucesso!");
		 }
		 
		 function handleAddError() {
		  // Show a popup message
		  alert("Não foi possivel cadastrar Marca");
		 }

	}
</script>

<body onload='document.formLogin.username.focus();'>

	<h1>Spring Security Custom Login Form (XML)</h1>

	<div id="divLogin">

		<h3>Login with Username and Password</h3>

		<form name="formLogin" action="j_spring_security_check" method="POST">
			<table>
				<tr>
					<td>User:</td>
					<td><input type="text" name="username" value=''></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="password" /></td>
				</tr>
				<tr>
					<td colspan='2'><input name="submit" type="submit" value="Login" /></td>
				</tr>
			</table>
			<br>
			<span id="resultado"></span>
		</form>
	</div>

</body>
</html>