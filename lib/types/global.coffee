module.exports =
  delay: (time, fn) ->
    setTimeout fn, time

for key of module.exports
  global[key] = module.exports[key] 
