<div ng-controller="marcaController" ng-init="marcaController.initList()">
	
	<div layout="row" layout-margin flex>
		<label>Id</label>
		<label>Descrição</label>  
	</div>
	
	<div ng-repeat="marca in marcaController.marcas" layout ="column" layout-margin>
		<div layout="row" layout-margin flex>
		  	<div>
		  	
			  <label>{{marca.id}}</label>
			  <label>{{marca.descricao}}</label>
			  
			  <md-button ng-click="marcaController.alterarModal($event, marca)" class="md-raised md-primary">
			  		<md-icon md-svg-src='{{iconAlterar}}'></md-icon>
			  </md-button>
			  
			  <md-button ng-click="marcaController.deletarModal($event, marca)" class="md-raised md-primary">
		  			<md-icon md-svg-src='{{iconDeletar}}'></md-icon>
		  	  </md-button>

			</div>
		</div>
	</div>
</div>