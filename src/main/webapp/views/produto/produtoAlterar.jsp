<div ng-controller="produtoController" ng-init="produtoController.findAllMarca()">
	<md-dialog>
	  <md-content>
	  		<div layout layout-align="center"> ALTERAR PRODUTO </div>
		    <div layout="column">
				<div layout="row">
					<md-input-container flex >
				        <label>Id</label>
				        <label>{{produto.id}}</label>
			        </md-input-container> 
			    </div>
			    
			    <div>
			    	<md-input-container flex >
			        	<label>Descricao</label>
			          	<input ng-model="produto.descricao" value="{{produto.descricao}}">
			        </md-input-container>
			    </div>    

			    <md-select ng-model="produto.marca" placeholder="{{produto.marca.descricao}}">
					<md-option ng-value="marca" ng-repeat="marca in produtoController.marcas">{{ marca.descricao }}</md-option>
		 		</md-select> 
			</div>
	  </md-content>
	  
	  <div class="md-actions" layout="row">
	    <span flex></span>
	    <md-button ng-click="cancel()">
	     CANCELAR
	    </md-button>
	    <md-button ng-click="answer(produto)" class="md-primary">
	     	ALTERAR
	    </md-button>
	  </div>
	</md-dialog>
</div>