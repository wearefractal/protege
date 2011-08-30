module.exports =
  isArray: -> Array.isArray @
  isElement: -> @nodeType is 1
  isHash: -> @ instanceof Hash
  isBoolean: -> typeof @ is 'boolean'
  isNumber: -> typeof @ is 'number'
  isString: -> typeof @ is 'string'
  isFunction: -> typeof @ is 'function'
  isXML: -> typeof @ is 'xml'

  values: -> @[x] for x of @keys()
  # keys: -> x for x of @ where @hasOwnProperty x
  getKeys: (value) -> x for x of @keys() when @[x] is value
  getValues: (key) -> x.values for x of @keys() when @[x] is key

  stringify: -> JSON.stringify @

for key of module.exports
  Object.defineProperty Object.prototype, key, value: module.exports[key]
