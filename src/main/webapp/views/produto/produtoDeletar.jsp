<div ng-controller="produtoController">
	<md-dialog>
	
	  <md-content>
				<div layout="row">
					<md-input-container flex >
				        <label>Id</label>
				        <label>{{produto.id}}</label>
			        </md-input-container> 
			    </div>
			    
			    <div>
			    	<md-input-container flex >
			        	<label>Descricao</label>
			          	<input ng-model="produto.descricao" disabled>
			        </md-input-container>
			    </div>    

			    <md-select ng-model="produto.marca" placeholder="{{produto.marca.descricao}}" disabled>
<!-- 					<md-option ng-value="marca" >{{ marca.descricao }}</md-option> -->
		 		</md-select> 
	  </md-content>
	  
	  <div class="md-actions" layout="row">
	    <span flex></span>
	    <md-button ng-click="cancel()">
	     CANCELAR
	    </md-button>
	    <md-button ng-click="answer(produto)" class="md-primary">
	     DELETAR
	    </md-button>
	  </div>
	</md-dialog>
</div>