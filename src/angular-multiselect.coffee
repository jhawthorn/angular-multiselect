angular.module('multiselect', [])
.directive('multiselect', ->
  replace: true
  require: ['modelExp', 'optionsExp']
  restrict: 'EA'
  scope: false
  template: (element, attrs) ->
    "<select ng-model=\"#{attrs.modelExp}\" ng-options=\"#{attrs.optionsExp}\"></select>"
)
