<div>
	<md-dialog>
	  <md-content>
	  		<div layout layout-align="center"> ALTERAR MARCA </div>
		    <div layout="column">
				<div layout="row">
					<md-input-container flex >
				        <label>Id</label>
				        <label>{{marca.id}}</label>
			        </md-input-container> 
			    </div>
			    
			    <div>
			    	<md-input-container flex >
			        	<label>Descricao</label>
			          	<input ng-model="marca.descricao" value="{{marca.descricao}}">
			        </md-input-container>
			    </div>
			</div>
	  </md-content>
	  <div class="md-actions" layout="row">
	    <span flex></span>
	    <md-button ng-click="cancel()">
	     CANCELAR
	    </md-button>
	    <md-button ng-click="answer(marca)" class="md-primary">
	     	ALTERAR
	    </md-button>
	  </div>
	</md-dialog>
</div>