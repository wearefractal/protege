require '../lib/main'
require 'colors'

test = (name, str) -> 
  if !Object.isString(str)
    str = JSON.stringify str
  console.log ('.' + name + ':').magenta, str.green

# Begin Array Tests
friends = ['bob', 'jill', 10, 'Jill', 'tom', 'mark', undefined, null, 'jill']
friends.push ['dbags', ['tony', 'rigatoni']]
friends.push 'whats-her-face'
console.log 'Starting Protege Array tests'.red
test 'Starting Object', friends
test 'typeof', typeof friends
  
test 'size()', friends.size()
test 'first()', friends.first()
test 'last()', friends.last()
  
test 'clone()', friends.clone()
test 'clear()', friends.clone().clear()
test 'compact()', friends.compact()
test 'flatten()', friends.flatten()
  
test 'remove("jill")', friends.clone().remove('jill')
test 'removeAll("jill")', friends.clone().removeAll('jill')
test 'removeAllIgnoreCase("jill")', friends.clone().removeAllIgnoreCase('jill')
test 'removeIndex(0)', friends.clone().removeIndex(0)
  
test 'merge()', friends.clone().merge(friends)
test 'unique()', friends.unique()
test 'intersect(["jill"])', friends.clone().intersect(['jill'])

# Begin Object Tests
contacts = {douchebag: 'tony', bros: ['thomas', 'bob'], hos: ['jill', 'stephanie'], family: {dad: 'mike', mom: 'tiffany', sister: 'jill'}, "tool": 'tony'}
console.log 'Starting Protege Object tests'.red
test 'Starting Object', contacts
test 'typeof', typeof contacts
  
test 'isArray()', [typeof [], Object.isArray([])]
test 'isBoolean()', [typeof true, Object.isBoolean(true)]
test 'isNumber()', [typeof 0, Object.isNumber(0)]
test 'isString()', [typeof '', Object.isString('')]
test 'isFunction()', [typeof test, Object.isFunction(test)]
test 'isObject()', [typeof contacts, Object.isObject(contacts)]
  
test 'isEmpty()', [[], Object.isEmpty([])]
test 'isEmpty()', ['', Object.isEmpty('')]
test 'isEmpty()', [{}, Object.isEmpty({})]
  
test 'clone()', contacts.clone()
test 'keys()', contacts.keys()
test 'values()', contacts.values()
  
test 'getKeys("tony")', contacts.getKeys('tony')
test 'getValues("tool")', contacts.getValues('tool')
test 'getKey()', contacts.getKey()
test 'getValue()', contacts.getValue()
  
test 'concat({rapper: "pdizzy"})', contacts.concat({rapper: 'pdizzy'})
test 'merge({douchebag: "mike"})', contacts.merge({douchebag: "mike"})
test 'unique()', contacts.unique()
test 'unique(true)', contacts.unique(true)
test 'remove("family")', contacts.remove('family')
  
buddy = 'Frank'
console.log 'Starting Protege String tests'.red
test 'Starting Object', buddy
test 'typeof', typeof buddy
test 'upcase()', buddy.upcase()
test 'downcase()', buddy.downcase()
  
test 'startsWith("F")', buddy.startsWith('F')
test 'startsWithIgnoreCase("f")', buddy.startsWithIgnoreCase('f')
test 'endsWith("k")', buddy.endsWith('k')
test 'endsWithIgnoreCase("K")', buddy.endsWithIgnoreCase('K')
  
test 'contains("rank")', buddy.contains('rank')
test 'containsIgnoreCase("f")', buddy.containsIgnoreCase('f')
test 'equalsIgnoreCase("frank")', buddy.equalsIgnoreCase('frank')
  
console.log 'Starting Protege JSON tests'.red
test 'Starting Object', contacts
test 'typeof', typeof contacts
test 'prettify()', contacts.prettify()
test 'stringify()', contacts.stringify()

console.log 'Starting Protege Function tests'.red
  
myFunc = (argz) -> 
  console.log argz
  return 15
    
cacheFunc = myFunc.memoize()
console.log myFunc
test 'Starting Function', {}
test 'typeof', typeof myFunc
test 'cacheFunc(10)', cacheFunc 10
test 'cacheFunc(11)', cacheFunc 11
test 'cacheFunc(10)', cacheFunc 10
