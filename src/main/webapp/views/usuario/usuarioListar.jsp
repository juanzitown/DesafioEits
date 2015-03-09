<div ng-controller="usuarioController" ng-init="usuarioController.initList()">
	
	<div layout="row" layout-margin flex>
		<label>Id</label>
		<label>Nome</label>  
	</div>
	
	<div ng-repeat="usuario in usuarioController.usuarios" layout ="column" layout-margin>
		<div layout="row" layout-margin flex>
		  	<div>
		  	
			  <label>{{usuario.id}}</label>
			  <label>{{usuario.nome}}</label>
			  
			  <md-button ng-click="usuarioController.alterarModal($event, usuario)" class="md-raised md-primary">
			  		<md-icon md-svg-src='{{iconAlterar}}'></md-icon>
			  </md-button>
			  
			  <md-button ng-click="usuarioController.deletarModal($event, usuario)" class="md-raised md-primary">
		  			<md-icon md-svg-src='{{iconDeletar}}'></md-icon>
		  	  </md-button>

			</div>
		</div>
	</div>
</div>