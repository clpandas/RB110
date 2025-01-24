## Ruby Collection Basics
- Ruby built-in collection types include: strings, arrays, hashes.
- Collections are made of individual elements.
- To work with collections, it is important to understand how they are structured, and how to reference and assign the individual elements within them.

## Accessing Elements in a Collection
### String element reference
- Technically, strings are not true collections. 
- Collections contain multiple objects, while strings only contain a single object: the string.
- The individual characters within a string are not considered objects, but are part of the object that contains the string value.
- Strings act like collections because you can access and assign each character individually.
- You can access characters in a string using a 0-based index. 
- However, because strings are not made of object, every time you access a character of the string, it returns a new string object. 
### Array element reference
- Arrays are list of elements that are ordered by a 0-based index, where each element can be any object.
- Array elements can be referenced (accessed) using their index position.
- Referencing an out-of-bounds index returns `nil`.
- The `Array#fetch` method is useful for distinguishing a valid `nil` return and an out-of-bounds reference. 
- Negative indices will access elements starting from the last index in the collection (`-1`) and working backwards. 
### Hash element reference 
- Hashes are key-value pairs, that look like two element arrays under the hood. 
- This is how hashes have the `to_a` method available to them to convert them into array objects. 
```ruby
hsh = { sky: "blue", grass: "green" }
hsh.to_a # => [[:sky, "blue"], [:grass, "green"]]
```
- Hashes also have a `Hash#fetch` method available to help distinguish between valid hash keys with a `nil` value from invalid hash keys. 

## Assigning Elements in a Collection
- The element assignent syntax is available to strings, arrays, and hashes to access and reassign their elements. 