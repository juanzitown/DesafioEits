<div ng-controller="produtoController" ng-init="produtoController.initInsert()">
<div layout layout-align="center"> CADASTRAR PRODUTO </div>
	<div layout="column">
	
	     <md-input-container flex >
	     	<label>Descrição</label>
	        <input ng-model="produtoController.cadastrar.produto.descricao">
	     </md-input-container>
	     
	     <md-select ng-model="produtoController.cadastrar.cbMarca" placeholder="Selecione uma marca">
			<md-option ng-value="marca" ng-repeat="marca in produtoController.marcas">{{ marca.descricao }}</md-option>
		 </md-select> 
	     
	     <md-button class="md-raised" ng-click="produtoController.saveProduto()">Cadastrar</md-button>
	     
	</div>
</div>