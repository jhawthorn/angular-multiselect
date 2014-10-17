angular.module('multiselect')
.factory('Choice', ->

  class Choice

    constructor: (options) ->
      if typeof options is 'string'
        @value = options
      @label = options.label or @value
)
