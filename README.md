**Protege is a supah wikkit sikk NodeJS coffee-script library that takes pointers from PrototypeJS and Ruby**


## Installation
    
To install Protege, use [npm](http://github.com/isaacs/npm):

        $ npm install -g protege

## Usage

```require('protege')``` - it's that easy

### Array
```
.clone() - Duplicates the array into a new reference.

.merge(arr) - Adds array arr to array
.unique() - Returns a copy of the array with duplicates removed
.flatten() - Returns a one-dimensional copy of the array
.compact() - Returns a copy of the array with all undefined and null items removed
.intersect(arr) - Returns an array of all items in both arr and the array

.size() - Returns size of array
.first() - Returns first value or array or undefined
.last() - Returns last value or array or undefined

.remove(value) - Removes first instance of value from array
.removeAll(value) - Removes all instances of value from array.
.removeAllIgnoreCase(value) - Removes all instances of value from array ignoring case
.removeIndex(idx) - Removes index of idx from array
.clear() - Removes all items from array
```

### String
```
.upcase() - Alias for toUpperCase()
.downcase() - Alias for toLowerCase()

.strip() - Alias for trim()
.stripr() - Alias for trimRight()
.stripl() - Alias for trimLeft()

.contains(value) - Returns true if the string contains value
.containsIgnoreCase(value) - Returns true if the string contains value ignoring case
.equals(value) - Returns true if the string is value
.equalsIgnoreCase(value) - Returns true if the string equals value ignoring case
```

### Object
```
.isArray() - Returns true if object is an array
.isElement() - Returns true if object is a DOM element
.isHash() - Returns true if object is a Hash
.isBoolean() - Returns true if object is a boolean
.isNumber() - Returns true if object is a number
.isString() - Returns true if object is a string
.isFunction() - Returns true if object is a function
.isXML() - Returns true if object is an XML object

.values() - Returns all values in the object
.getKeys(value) - Returns all keys for the corresponding value
.getValues(key) - Returns all values for the corresponding key

.stringify() - Returns JSON string for object
```

## Examples

You can view further examples in the [example folder.](https://github.com/Contra/protege/tree/master/examples)

## Contributors

- [Contra](https://github.com/Contra)

## LICENSE

(MIT License)

Copyright (c) 2011 Contra <contra@australia.edu>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
