<div ng-controller="usuarioController">
	<md-dialog>
	
	  <md-content>
	  			<div layout layout-align="center"> DELETAR USUARIO </div>
				<div>
			    	<md-input-container flex >
			        	<label>Id</label>
			          	<input ng-model="usuario.id" disabled>
			        </md-input-container>
			    </div>
			    <div>
			    	<md-input-container flex >
			        	<label>Nome</label>
			          	<input ng-model="usuario.nome" disabled>
			        </md-input-container>
			    </div>
			    <div>
			    	<md-input-container flex >
			        	<label>Username</label>
			          	<input ng-model="usuario.username" disabled>
			        </md-input-container>
			    </div>   
			    <div>
			    	<md-input-container flex >
			        	<label>Password</label>
			          	<input ng-model="usuario.password" disabled>
			        </md-input-container>
			    </div>       

			    <md-select ng-model="usuario.role" placeholder="{{usuario.roleUsuario.role}}" disabled>
<!-- 					<md-option ng-value="marca" >{{ marca.descricao }}</md-option> -->
		 		</md-select> 
	  </md-content>
	  
	  <div class="md-actions" layout="row">
	    <span flex></span>
	    <md-button ng-click="cancel()">
	     CANCELAR
	    </md-button>
	    <md-button ng-click="answer(usuario)" class="md-primary">
	     DELETAR
	    </md-button>
	  </div>
	</md-dialog>
</div>