module.exports =

  memoize: ->
    self = @
    cache = {}
    (arg) ->
      if arg of cache
        cache[arg]
      else
        cache[arg] = self(arg)
    
for key of module.exports
  Object.defineProperty Function.prototype, key, value: module.exports[key]
