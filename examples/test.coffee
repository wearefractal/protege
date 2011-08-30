console.log 'Starting Protege Array tests...'

require '../lib/main'
require 'colors'
friends = ['bob', 'jill', 10, 'Jill', 'tom', 'mark', undefined, null, 'jill']
friends.push ['dbags', ['tony', 'rigatoni']]
friends.push 'whats-her-face'

console.log 'Starting Data:'.green, friends.stringify()

console.log 'typeof:'.magenta, typeof friends
console.log '.isArray():'.magenta, friends.isArray()
console.log '.size():'.magenta, friends.size()
console.log '.first():'.magenta, friends.first()
console.log '.last():'.magenta, friends.last()
console.log '.clone():'.magenta, friends.clone().stringify()
console.log '.clear():'.magenta, friends.clone().clear().stringify()
console.log '.compact():'.magenta, friends.clone().compact().stringify()
console.log '.flatten():'.magenta, friends.clone().flatten().stringify()
console.log '.remove("jill"):'.magenta, friends.clone().remove('jill').stringify()
console.log '.removeAll("jill"):'.magenta, friends.clone().removeAll('jill').stringify()
console.log '.removeAllIgnoreCase("jill"):'.magenta, friends.clone().removeAllIgnoreCase('jill').stringify()
console.log '.removeIndex(0):'.magenta, friends.clone().removeIndex(0).stringify()
console.log '.merge():'.magenta, friends.clone().merge(friends).stringify()
console.log '.unique():'.magenta, friends.clone().unique().stringify()
console.log '.intersect(["jill"]):'.magenta, friends.clone().intersect(['jill']).stringify()
console.log '.stringify():'.magenta, friends.clone().stringify()
