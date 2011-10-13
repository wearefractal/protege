require('coffee-script');

module.exports =
  global: require './types/global'
  object: require './types/object'
  function: require './types/function'
  string: require './types/string'
  array: require './types/array'
  regexp: require './types/regexp'

