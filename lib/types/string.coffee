module.exports =
  upcase: -> @toUpperCase()
  downcase: -> @toLowerCase()
  
  startsWith: (val) -> @indexOf(val) is 0
  endsWith: (val) -> 
    diff = @length - val.length
    return diff >= 0 and @indexOf(val, diff) == diff
  startsWithIgnoreCase: (val) -> @downcase().indexOf(String(val).downcase()) is 0
  endsWithIgnoreCase: (val) -> 
    diff = @length - val.length
    return diff >= 0 and @downcase().indexOf(val.downcase(), diff) == diff
  
  contains: (val) -> @indexOf(val) > -1
  containsIgnoreCase: (val) -> @downcase().contains String(val).toLowerCase()
  equalsIgnoreCase: (val) -> @downcase() is String(val).toLowerCase()
  
  strip: -> @trim()
  lstrip: -> @trimLeft()
  rstrip: -> @trimRight()
  
for key of module.exports
  Object.defineProperty String.prototype, key, value: module.exports[key]
