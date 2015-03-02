<md-dialog aria-label="Mango (Fruit)">
  <md-content>
    <md-subheader class="md-sticky-no-effect">Mango (Fruit)</md-subheader>
    <p>
      The mango is a juicy stone fruit belonging to the genus Mangifera, consisting of numerous tropical fruiting trees, cultivated mostly for edible fruit. The majority of these species are found in nature as wild mangoes. They all belong to the flowering plant family Anacardiaceae. The mango is native to South and Southeast Asia, from where it has been distributed worldwide to become one of the most cultivated fruits in the tropics.
    </p>
    <img style="margin: auto; max-width: 100%;" src="img/mangues.jpg">
    <p>
      The highest concentration of Mangifera genus is in the western part of Malesia (Sumatra, Java and Borneo) and in Burma and India. While other Mangifera species (e.g. horse mango, M. foetida) are also grown on a more localized basis, Mangifera indica—the "common mango" or "Indian mango"—is the only mango tree commonly cultivated in many tropical and subtropical regions.
    </p>
    <p>
      It originated in Indian subcontinent (present day India and Pakistan) and Burma. It is the national fruit of India, Pakistan, and the Philippines, and the national tree of Bangladesh. In several cultures, its fruit and leaves are ritually used as floral decorations at weddings, public celebrations, and religious ceremonies.
    </p>
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