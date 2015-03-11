<div ng-controller="produtoController" ng-init="produtoController.initList()">
	<div layout layout-align="center"> LISTAR PRODUTO </div>

		<div layout="row" layout-margin>
			<div flex="10"><label>Id</label></div>
			<div flex="40"><label>Descrição</label></div>
			<div flex="30"><label>Marca</label></div>
			<div flex="10"><label>Alterar</label></div>
			<div flex="10"><label>Deletar</label></div>  
		</div>
		
		<div ng-repeat="produto in produtoController.produtos" layout ="column" layout-margin>
			<div layout="row" layout-margin="center">
				  <div flex="10"><label>{{produto.id}}</label></div>
				  <div flex="40"><label>{{produto.descricao}}</label></div>
				  <div flex="30">
					  	<label>{{produto.marca.descricao}}</label>
				  </div>
				 				  
				  <div flex="10">
					  <md-button ng-click="produtoController.alterarModal($event, produto)" class="md-raised md-primary">
					  		<md-icon md-svg-src='{{iconAlterar}}'></md-icon>
					  </md-button>
				  </div>
				  
				  <div flex="10">
					  <md-button ng-click="produtoController.deletarModal($event, produto)" class="md-raised md-primary">
				  			<md-icon md-svg-src='{{iconDeletar}}'></md-icon>
				  	  </md-button>
				  </div>
				  
				  <div class="fab green">
				      <core-icon icon="create"></core-icon>
				      <paper-ripple class="circle recenteringTouch" fit></paper-ripple>
				  </div>
	    
			</div>
		</div>
</div>