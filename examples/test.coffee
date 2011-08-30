require '../lib/main'
require 'colors'

test = (name, str) -> 
  console.log ('.' + name + ':').magenta, JSON.stringify(str).green

# Begin Array Tests
friends = ['bob', 'jill', 10, 'Jill', 'tom', 'mark', undefined, null, 'jill']
friends.push ['dbags', ['tony', 'rigatoni']]
friends.push 'whats-her-face'
console.log 'Starting Protege Array tests'.red
test 'Starting Object', friends
test 'typeof', typeof friends
test 'isArray()', friends.isArray()
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
contacts = {douchebag: 'tony', bros: ['thomas', 'bob'], hos: ['jill', 'stephanie'], family: {dad: 'mike', mom: 'tiffany', sister: 'jill'}, tool: 'tony', tool: 'tony'}
console.log 'Starting Protege Object tests'.red
test 'Starting Object', contacts
test 'typeof', typeof contacts
test 'isArray()', [typeof temp, Object.isArray([])]
test 'isBoolean()', [typeof temp, Object.isBoolean(true)]
test 'isNumber()', [typeof temp, Object.isNumber(0)]
test 'isString()', [typeof temp, Object.isString('')]
test 'isFunction()', [typeof test, Object.isFunction(test)]
# test 'isObject()', [typeof contacts, contacts.isObject()]
test 'clone()', contacts.clone()
test 'keys()', contacts.keys()
test 'values()', contacts.values()
test 'getKeys("tony")', contacts.getKeys('tony')
test 'getValues("tool")', contacts.getValues('tool')

buddy = 'Frank'
console.log 'Starting Protege String tests'.red
test 'Starting Object', buddy
test 'typeof', typeof buddy
test 'upcase()', buddy.upcase()
test 'downcase()', buddy.downcase()
test 'contains("rank")', buddy.contains('rank')
test 'containsIgnoreCase("f")', buddy.containsIgnoreCase('f')
test 'equals("Frank")', buddy.equals('Frank')
test 'equalsIgnoreCase("frank")', buddy.equalsIgnoreCase('frank')

