module.exports =
  upcase: -> @toUpperCase()
  downcase: -> @toLowerCase()
  
  startsWith: (val) -> @indexOf(val) is 0
  endsWith: (val) -> @match(str + '$') is str
  startsWithIgnoreCase: (val) -> @downcase().indexOf(String(val).downcase()) is 0
  endsWithIgnoreCase: (val) -> @downcase().match(String(val).downcase() + '$') is String(val).downcase()
  
  contains: (val) -> @indexOf(val) > -1
  containsIgnoreCase: (val) -> @toLowerCase().contains String(val).toLowerCase()
  equalsIgnoreCase: (val) -> @toLowerCase() is String(val).toLowerCase()
  
  strip: -> @trim()
  lstrip: -> @trimLeft()
  rstrip: -> @trimRight()
  
for key of module.exports
  Object.defineProperty String.prototype, key, value: module.exports[key]
