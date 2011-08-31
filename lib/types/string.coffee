module.exports =
  upcase: -> @toUpperCase()
  downcase: -> @toLowerCase()
  
  contains: (val) -> @indexOf(val) > -1
  containsIgnoreCase: (val) -> @toLowerCase().contains String(val).toLowerCase()
  equalsIgnoreCase: (val) -> @toLowerCase() is String(val).toLowerCase()
  
  strip: -> @trim()
  lstrip: -> @trimLeft()
  rstrip: -> @trimRight()
  
for key of module.exports
  Object.defineProperty String.prototype, key, value: module.exports[key]
