<div ng-controller="marcaController" ng-init="marcaController.initList()">
	
	<div layout layout-align="center"> LISTAR MARCA </div>
	<div layout="row" layout-margin flex>
		<div flex="10"><label>Id</label></div>
		<div flex="40"><label>Descrição</label></div>
		<div flex="10"><label>Alterar</label></div>
		<div flex="10"><label>Deletar</label></div>    
	</div>
	
	<div ng-repeat="marca in marcaController.marcas" layout ="column" layout-margin>
		<div layout="row" layout-margin flex>
			<div flex ="10"><label>{{marca.id}}</label></div>
			<div flex ="40"><label>{{marca.descricao}}</label></div>  
			<div flex ="10">
				<md-button ng-click="marcaController.alterarModal($event, marca)" class="md-raised md-primary">
			  		<md-icon md-svg-src='{{iconAlterar}}'></md-icon>
			  	</md-button>
			</div>
			<div flex ="10">			  
			  	<md-button ng-click="marcaController.deletarModal($event, marca)" class="md-raised md-primary">
		  			<md-icon md-svg-src='{{iconDeletar}}'></md-icon>
		  	  	</md-button>
		  	</div>
		</div>
	</div>
</div>