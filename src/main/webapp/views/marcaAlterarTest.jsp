<md-dialog aria-label="ALTERAR">
  <md-content>
    <md-subheader class="md-sticky-no-effect">ALTERAR</md-subheader>
	    <div layout="column" layout-align="center center" style="min-height: 100px;">
	
			<div layout layout-sm="row"  style="width: 50%; style:min-height:100px">
				
				<md-input-container flex >
			        <label>Id</label>
			        <label>{{marca.id}}</label>
		        </md-input-container> 
		    </div>
		    <div>
		    	<md-input-container flex >
		        <label>Descrição</label>
		          <input ng-model="marca.descricao" placeholder="Descrição da Marca" style="width:50%" value="{{marca.descricao}}">
		        </md-input-container>
		        <label>{{marca.descricao}}</label> 
		    </div>
		 </div>
  </md-content>
  <div class="md-actions" layout="row">
    <md-button href="http://en.wikipedia.org/wiki/Mango" target="_blank" hide show-md>
      More on Wikipedia
    </md-button>
    <span flex></span>
    <md-button ng-click="answer(marca)">
     Not Useful
    </md-button>
    <md-button ng-click="answer(marca)" class="md-primary">
      Useful
    </md-button>
  </div>
</md-dialog>