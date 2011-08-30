**Protege is a versatile NodeJS extension library that aims to make code as simple as possible**


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
.upcase() - Alias for toUpperCase(), inspired by Ruby syntax
.downcase() - Alias for toLowerCase(), inspired by Ruby syntax

.strip() - Alias for trim(), inspired by Ruby syntax
.stripr() - Alias for trimRight(), inspired by Ruby syntax
.stripl() - Alias for trimLeft(), inspired by Ruby syntax

.contains(value) - Returns true if the string contains value, inspired by Java syntax
.containsIgnoreCase(value) - Returns true if the string contains value ignoring case, inspired by Java syntax
.equals(value) - Returns true if the string is value, inspired by Java syntax
.equalsIgnoreCase(value) - Returns true if the string equals value ignoring case, inspired by Java syntax
```

### Object
```
.clone() - Duplicates the object into a new reference

Object.isObject(object) - Returns true if object is an object
Object.isArray(object) - Returns true if object is an array
Object.isElement(object) - Returns true if object is a DOM element
Object.isBoolean(object) - Returns true if object is a boolean
Object.isNumber(object) - Returns true if object is a number
Object.isString(object) - Returns true if object is a string
Object.isFunction(object) - Returns true if object is a function
Object.isXML(object) - Returns true if object is an XML object

.keys() - Returns all keys in the object
.values() - Returns all values in the object
.getKey() - Returns first key in object
.getValue() - Returns first value in object
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
