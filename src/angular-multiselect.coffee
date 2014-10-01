angular.module('multiselect', [])
.directive('multiselect', ->
  replace: true
  require: ['modelExp', 'optionsExp']
  restrict: 'EA'
  scope:
    model: '='
    options: '='
  template: '<select ng-model="model" ng-options="thing for thing in options"></select>'
)
