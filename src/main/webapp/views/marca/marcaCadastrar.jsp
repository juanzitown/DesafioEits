
<div>
	<br>
	<div>
		MARCA
	</div>
	<br>
	<br>
	<div layout layout-sm="column">
		
        <md-input-container flex >
        <label>Descri��o</label>
          <input ng-model="marcaController.cadastrar.marca.descricao" placeholder="Descri��o da marca">
        </md-input-container> 
     </div>
     
     <md-button class="md-raised" ng-click="marcaController.saveMarca()">Cadastrar</md-button>
     <br><br><br>
     <label>{{marcaController.cadastrar.resultado}}</label>
</div>