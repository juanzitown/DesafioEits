<div ng-controller="usuarioController" ng-init="usuarioController.initInsert()">
	<div layout="column">
	
	     <md-input-container flex >
	     	<label>Nome</label>
	        <input ng-model="usuarioController.cadastrar.usuario.nome">
	     </md-input-container>
	     
	     <md-input-container flex >
	     	<label>Username</label>
	        <input ng-model="usuarioController.cadastrar.usuario.username">
	     </md-input-container>
	     
	     <md-input-container flex >
	     	<label>Password</label>
	        <input type="password" ng-model="usuarioController.cadastrar.usuario.password">
	     </md-input-container>
	     
	     <md-select ng-model="usuarioController.cadastrar.cbRole" placeholder="Selecione uma Role">
			<md-option ng-value="role" ng-repeat="role in usuarioController.roles">{{ role.role }}</md-option>
		 </md-select> 
	     
	     <md-button class="md-raised" ng-click="usuarioController.saveUsuario()">Cadastrar</md-button>
	     
	</div>
</div>