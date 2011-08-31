module.exports =
  escape: (str) -> String(str).replace(/([.*+?^=!:${}()|[\]\/\\])/g, '\\$1')
  
for key of module.exports
  Object.defineProperty RegExp.prototype, key, value: module.exports[key]
