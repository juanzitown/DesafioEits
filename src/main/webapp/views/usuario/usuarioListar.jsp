<div ng-controller="usuarioController" ng-init="usuarioController.initList()">
	
	<div layout layout-align="center"> LISTAR USUARIO </div>
	<div layout="row" layout-margin flex>
		<div flex ="10"><label>Id</label></div>
		<div flex ="40"><label>Email</label></div>
		<div flex ="30"><label>Habilitado</label></div>
		<div flex="10"><label>Alterar</label></div>
		<div flex="10"><label>Desabilitar</label></div>    
	</div>
	
	<div ng-repeat="usuario in usuarioController.usuarios" layout ="column" layout-margin>
		<div layout="row" layout-margin flex>		  	
			  <div flex ="10"><label>{{usuario.id}}</label></div>
			  <div flex ="40"><label>{{usuario.nome}}</label></div>
			  <div flex ="30"><label>{{usuario.enabled}}</label></div>
			  
			  <div flex ="10">
				  <md-button ng-click="usuarioController.alterarModal($event, usuario)" class="md-raised md-primary">
				  		<md-icon md-svg-src='{{iconAlterar}}'></md-icon>
				  </md-button>
			  </div>
			  <div flex ="10">
				  <md-button ng-click="usuarioController.deletarModal($event, usuario)" class="md-raised md-primary">
			  			<md-icon md-svg-src='{{iconDeletar}}'></md-icon>
			  	  </md-button>
		  	  </div>
		  	  
		</div>
	</div>
</div>