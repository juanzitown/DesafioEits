<div ng-controller="usuarioController" ng-init="usuarioController.findAllRole()">
	<md-dialog>
	
	  <md-content>
	  		<div layout layout-align="center"> ALTERAR USUARIO </div>
		    <div layout="column">
				<div layout="row">
					<md-input-container flex >
				        <label>Id</label>
				        <label>{{usuario.id}}</label>
			        </md-input-container> 
			    </div>
			    
			    <div>
			    	<md-input-container flex >
			        	<label>Nome</label>
			          	<input ng-model="usuario.nome" value="{{usuario.nome}}">
			        </md-input-container>
			        
			        <md-input-container flex >
			        	<label>Username</label>
			          	<input ng-model="usuario.username" value="{{usuario.username}}">
			        </md-input-container>
			        
			        <md-input-container flex >
			        	<label>Password</label>
			          	<input type="password" ng-model="usuario.password" value="{{usuario.password}}">
			        </md-input-container>
			    </div>    

			    <md-select ng-model="usuario.roleUsuario" placeholder="{{usuario.roleUsuario.role}}">
					<md-option ng-value="role" ng-repeat="role in usuarioController.roles">{{ role.role}}</md-option>
		 		</md-select> 
		 
			</div>
	  </md-content>
	  
	  <div class="md-actions" layout="row">
	    <span flex></span>
	    <md-button ng-click="cancel()">
	     CANCELAR
	    </md-button>
	    <md-button ng-click="answer(usuario)" class="md-primary">
	     	ALTERAR
	    </md-button>
	  </div>
	</md-dialog>
</div>