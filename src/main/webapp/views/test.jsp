<html ng-app="StarterApp">

<head>


   <!-- Angulars Material CSS using RawGit to load directly from `bower-material/master` -->
   <link rel="stylesheet" href="https://rawgit.com/angular/bower-material/master/angular-material.css">

   <!-- Angular Material Dependencies -->
   <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.6/angular.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.6/angular-animate.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.6/angular-aria.js"></script>

   <!-- Angular Material Javascript using RawGit to load directly from `bower-material/master` -->
   <script src="https://rawgit.com/angular/bower-material/master/angular-material.js"></script>

   <script src="/app/views/js/test.js" ></script>
</head>
   <body ng-controller="mainController">

       <md-sidenav class="md-sidenav-left md-whiteframe-z2" md-component-id="left"  layout="vertical" layout-fill md-is-locked-open="$mdMedia('gt-md')">
           <md-toolbar class="md-theme-indigo">
               <h1 class="md-toolbar-tools">Sidenav Left</h1>
           </md-toolbar>
           <md-content class="md-padding" ng-repeat="tab in tabs" >
               <md-button>
                   {{tab.name}}
               </md-button>
           </md-content>
       </md-sidenav>

   </body>
</html>