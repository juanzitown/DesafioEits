<div ng-controller="produtoController" ng-init="produtoController.initList()">
	
	<div layout="row" layout-margin flex>
		<label>Id</label>
		<label>Descrição</label>  
	</div>
	
	<div ng-repeat="produto in produtoController.produtos" layout ="column" layout-margin>
		<div layout="row" layout-margin flex>
		  	<div>
		  	
			  <label>{{produto.id}}</label>
			  <label>{{produto.descricao}}</label>
			  
			  <md-button ng-click="produtoController.alterarModal($event, marca)" class="md-raised md-primary">
			  		<md-icon md-svg-src='{{iconAlterar}}'></md-icon>
			  </md-button>
			  
			  <md-button ng-click="produtoController.deletarModal($event, marca)" class="md-raised md-primary">
		  			<md-icon md-svg-src='{{iconDeletar}}'></md-icon>
		  	  </md-button>

			</div>
		</div>
	</div>
</div>