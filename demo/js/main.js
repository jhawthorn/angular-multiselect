angular.module('demo', ['multiselect'])
.controller('demoCtrl', function ($scope) {
  $scope.awesomeThings = [
    'AngularJS',
    'Coffeescript',
    'Gulp',
  ];
  $scope.myThing = undefined;
})
