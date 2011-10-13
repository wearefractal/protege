module.exports =
  delay: (time, fn) ->
    setTimeout fn, time
    
for key of module.exports
  Object.defineProperty global, key, value: module.exports[key]
