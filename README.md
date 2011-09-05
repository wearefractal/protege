**Protege is a versatile NodeJS extension library that aims to make code as simple as possible**


## Installation
    
To install Protege, use [npm](http://github.com/isaacs/npm):

        $ npm install -g protege

## Usage

```require('protege')``` - it's that easy

### Object
####These apply to all types, some are Object specific though
```
.clone() - Duplicates the object into a new reference
.clear() - Removes all keys and values from the objects
.concat(source) - Adds all properties/values from source to object. 
        (optional) overwrite = true will overwrite existing values with source values
.merge(source, overwrite, deep) - Merge source properties/values into object. 
        (optional) overwrite = true will overwrite existing values with source values
        (optional) deep = true will initiate a deep merge, merging descriptors and non-enumerable properties
        
.extend(source) - Alias for merge
.unique(merge) - Returns a unique copy of the object. (optional) merge will merge values for duplicate keys into arrays instead of removing them

Object.isEmpty(object) - Returns true if object is empty
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

.remove(key) - Removes key from object

.stringify() - Returns JSON string for object
.prettify() - Returns a human readable JSON string for object
```

### Array
####These also apply to String (since String is just an array after all) but some are only really useful for true arrays
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

.replace(value, newval) - Replaces first instance of value with newval
.replaceIndex(index, value) - Replaces item at index with value
.replaceAll(value, newval) - Replaces all instances of value with newval
.remove(value) - Removes first instance of value from array
.removeAll(value) - Removes all instances of value from array.
.removeAllIgnoreCase(value) - Removes all instances of value from array ignoring case
.removeIndex(idx) - Removes index of idx from array
```

### String
```
.upcase() - Alias for toUpperCase(), inspired by Ruby syntax
.downcase() - Alias for toLowerCase(), inspired by Ruby syntax

.strip() - Alias for trim(), inspired by Ruby syntax
.rstrip() - Alias for trimRight(), inspired by Ruby syntax
.lstrip() - Alias for trimLeft(), inspired by Ruby syntax

.replaceAll(value, newval) - Replaces all instances of value with newval

.startsWith(value) - Returns true if string starts with value, inspired by Java syntax
.endsWith(value) - Returns true if string ends with value, inspired by Java syntax
.startsWithIgnoreCase(value) - Returns true if string starts with value ignoring case, inspired by Java syntax
.endsWithIgnoreCase(value) - Returns true if string ends with value ignoring case, inspired by Java syntax

.contains(value) - Returns true if the string contains value, inspired by Java syntax
.containsIgnoreCase(value) - Returns true if the string contains value ignoring case, inspired by Java syntax
.equalsIgnoreCase(value) - Returns true if the string equals value ignoring case, inspired by Java syntax
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
