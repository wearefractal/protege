module.exports =

  isEmpty: (val) ->
    unless val?
      return false
    if Object.isArray(val) or Object.isString(val)
      return val.length is 0
    return val.keys.length is 0
        
  isArray: (val) -> Array.isArray val
  isElement: (val) -> val.nodeType is 1
  isBoolean: (val) -> typeof val is 'boolean'
  isObject: (val) -> typeof val is 'object'
  isNumber: (val) -> typeof val is 'number'
  isString: (val) -> typeof val is 'string'
  isFunction: (val) -> typeof val is 'function'
  isXML: (val) -> typeof val is 'xml'
  
  getKey: -> @keys()[0]
  getValue: -> @[@getKey()]
  getKeys: (value) -> x for x in @keys() when @[x] is value
  getValues: (key) -> @[x] for x in @keys() when x is key
  keys: -> Object.keys @
  values: -> @[x] for x in @keys()
  remove: (key) -> delete @[key]; @
  
  stringify: -> JSON.stringify @
  prettify: -> JSON.stringify @, null, 4
  
  merge: (source, overwrite, deep) ->
    overwrite ?= false
    deep ?= false
    if deep
      for name in Object.getOwnPropertyNames source
        if @hasOwnProperty name and !overwrite then continue 
        Object.defineProperty @, name, Object.getOwnPropertyDescriptor(source, name)
    else
      for x in source.keys()
        if @hasOwnProperty x and !overwrite then continue
        @[x] = source[x]  
    return @ 
      
  concat: (source) -> @merge source, false, false
  
  extend: (source) -> @merge source
      
  clone: ->
    out = {}
    for name in Object.getOwnPropertyNames @
      Object.defineProperty out, name, Object.getOwnPropertyDescriptor(@, name)
    return out
  
  clear: ->
    for x in @keys()
      @remove(x)
    return @
      
  unique: (merge) ->
    out = {}
    merge ?= false
    for x of @keys()
      if !out.hasOwnProperty x 
        if merge
          vals = @getValues(x)
          if vals.length > 1 then out[x] = vals else out[x] = vals[0]
        else
          out[x] = @[x]
    return out
    
for key of module.exports
  Object.defineProperty Object.prototype, key, value: module.exports[key]
