<div ng-controller="marcaController" ng-init="marcaController.initInsert()">
	<div layout="column">
	     <md-input-container flex >
	     <label>Descri��o</label>
	       <input ng-model="marcaController.cadastrar.marca.descricao">
	     </md-input-container> 
	     
	     <md-button class="md-raised" ng-click="marcaController.saveMarca()">Cadastrar</md-button>
	     <label>{{marcaController.cadastrar.resultado}}</label>
	</div>
</div>