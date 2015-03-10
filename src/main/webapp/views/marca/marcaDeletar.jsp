<div ng-controller="marcaController">
	<md-dialog>
	
	  <md-content>
				<div layout="row">
					<md-input-container flex >
				        <label>Id</label>
				        <label>{{marca.id}}</label>
			        </md-input-container> 
			    </div>
			    
			    <div>
			    	<md-input-container flex >
			        	<label>Descricao</label>
			          	<input ng-model="marca.descricao" disabled>
			        </md-input-container>
			    </div>    

			    <md-select ng-model="marca" placeholder="{{marca.descricao}}" disabled></md-select> 
	  </md-content>
	  
	  <div class="md-actions" layout="row">
	    <span flex></span>
	    <md-button ng-click="cancel()">
	     CANCELAR
	    </md-button>
	    <md-button ng-click="answer(marca)" class="md-primary">
	     DELETAR
	    </md-button>
	  </div>
	</md-dialog>
</div>