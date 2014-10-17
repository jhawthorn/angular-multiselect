angular.module('multiselect', ['templates'])
.directive('multiselect', ->
  replace: true
  restrict: 'EA'
  scope:
    model: '='
    options: '='
  templateUrl: 'multiselect.html'
  controller: [
    '$scope'
    'Choice'
  (
      $scope
      Choice
  ) ->
    model = $scope.model or []

    options = $scope.options or []
    options.forEach (option, index) ->
      options[index] = new Choice(option)

    $scope.options = options

    $scope.model = model

    $scope.updateModel = ->
      replaceContents model, options.filter (option) ->
        option.selected
  ]
)

replaceContents = (array, newContents) ->
  array.splice(0, array.length, newContents...)
