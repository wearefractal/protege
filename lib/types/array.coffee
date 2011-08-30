module.exports =
  remove: (val) -> 
    if @contains val
      @splice @indexOf(val), 1
    return @
    
  removeIndex: (idx) -> 
    if idx <= @length 
      @splice idx, 1
    return @
      
  removeAll: (val) -> 
    for x in @ 
      if x is val
        @removeIndex _i
    return @
  
  removeAllIgnoreCase: (val) -> 
    for x in @
      if String(x).toLowerCase() is String(val).toLowerCase()
        @removeIndex _i  
    return @
    
  clear: -> @length = 0; @
  clone: -> x for x in @

  merge: (val) -> 
    for x in val
      @push x
    return @
    
  intersect: (val) -> x for x in @unique() when x in val
    
  contains: (val) -> @indexOf(val) > -1

  unique: -> x for x in @ when !_results.contains x
  compact: -> x for x in @ when x?
  flatten: -> 
    array = []
    for x in @ 
      if x? and x.isArray()
        array.merge x.flatten()
      else
        array.push x
    return array

  size: -> @length
  first: -> @[0]
  last:-> @[@length-1]

for key of module.exports
  Object.defineProperty Array.prototype, key, value: module.exports[key]
