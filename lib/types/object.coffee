module.exports =
  isArray: (val) -> Array.isArray val
  isElement: (val) -> val.nodeType is 1
  #isHash: (val) -> val instanceof Hash
  isBoolean: (val) -> typeof val is 'boolean'
  isObject: (val) -> typeof val is 'object'
  isNumber: (val) -> typeof val is 'number'
  isString: (val) -> typeof val is 'string'
  isFunction: (val) -> typeof val is 'function'
  isXML: (val) -> typeof val is 'xml'

  getKey: -> @keys()[0]
  getValue: -> @values()[0]
  getKeys: (value) -> x for x in @keys() when @[x] is value
  getValues: (key) -> @[x] for x in @keys() when x is key
  keys: -> Object.keys @
  values: -> @[x] for x in @keys()

  stringify: -> JSON.stringify @

  
  clone: () ->
    out = {}
    for name in Object.getOwnPropertyNames(@)
      Object.defineProperty out, name, Object.getOwnPropertyDescriptor(@, name)
    
    return out
      
for key of module.exports
  Object.defineProperty Object.prototype, key, value: module.exports[key]
