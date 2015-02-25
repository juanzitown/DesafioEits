<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/angular_material/0.7.1/angular-material.min.css">

<script	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.6/angular.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.6/angular-animate.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.6/angular-aria.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/angular_material/0.7.1/angular-material.min.js"></script>
<script src="views/js/materialTest.js"></script>
<script src="views/js/message.js"></script>

<div ng-app="inputBasicDemo" ng-controller="DemoCtrl" layout="column">
  <md-content md-theme="docs-dark" class="md-padding" layout="row" layout-sm="column" style="font-size:1.2em">
    <md-input-container>
      <label>Title</label>
      <input ng-model="user.title">
    </md-input-container>
    <md-input-container>
      <label>Email</label>
      <input ng-model="user.email" type="email">
    </md-input-container>
  </md-content>
  <md-content class="md-padding">
    <form name="userForm">
      <div layout layout-sm="column">
        <md-input-container style="width:80%">
            <label>Company (Disabled)</label>
            <input ng-model="user.company" disabled>
          </md-input-container>
        <md-input-container flex>
          <label>Submission Date</label>
          <input type="date" ng-model="user.submissionDate">
        </md-input-container>
      </div>
      <div layout layout-sm="column">
        <md-input-container flex>
          <label>First Name</label>
          <input ng-model="user.firstName" placeholder="Placeholder text">
        </md-input-container>
        <md-input-container flex>
          <label>Last Name</label>
          <input ng-model="theMax">
        </md-input-container>
      </div>
      <md-input-container flex>
        <label>Address</label>
        <input ng-model="user.address">
      </md-input-container>
      <div layout layout-sm="column">
        <md-input-container flex>
          <label>City</label>
          <input ng-model="user.city">
        </md-input-container>
        <md-input-container flex>
          <label>State</label>
          <input ng-model="user.state">
        </md-input-container>
        <md-input-container flex>
          <label>Postal Code</label>
          <input ng-model="user.postalCode">
        </md-input-container>
      </div>
      <md-input-container flex>
        <label>Biography</label>
        <textarea ng-model="user.biography" columns="1" md-maxlength="150"></textarea>
      </md-input-container>
    </form>
  </md-content>
</div>