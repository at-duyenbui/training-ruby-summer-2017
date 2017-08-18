### Daily report
19/06/2017
____
## Data structures 
### Hash
*Some common methods of hash*
##### *hash.size*
Return the number of key-value pairs of the hash
```ruby
hash_1 = {a:1, b:2, c:{e:5, f:6}, d:4}
puts hash_1.size #=> 4
puts hash_1.length #=> 4
```
##### *hash.values and hash.keys*
Return the array of values or keys of the hash
```ruby
hash_1 = {a:1, b:2, c:{e:5, f:6}, d:4}
puts hash_1.values #=> [1, 2, {e:5, f:6}, 4]
puts hash_1.keys #=> [a, b, c, d]
```
##### *hash.reject{|key, value| block}*
Return a new hash base on old hash has been deleted key-value pairs which block return true 
```ruby
hash_1 = {a:1, b:2, c:3, d:4, e:5, f:6}
puts hash_1.reject{|key, value| value < 3}
#=> {:c=>3, :d=>4, :e=>5, :f=>6}
```
##### *hash.merge(other_hash)*
Return a new hash contains the key-value pairs of old hash and other_hash. In that, key-value pairs of old hash are arranged first, key-value pairs of other_hash are added behind.
```ruby
hash_1 = {a:1, b:2, c:3, d:4}
hash_2 = {a:2, e:5, f:6}
hash_1.merge(hash_2) #=> {:a=>2, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6}
```
_____
### String
*string* is an object consisting of characters placed in '  ' or  "  ".
There are two types of string: absolute string and relative string.
- absolute string placed in  '  ' . Values of absolute string not changes
- relative string placed in "  " . It contains variables or expression. Values of relative string can be changed by variables or expression.
example:
```ruby
x = "string"
puts 'This is a #{x}'	#=> This is a #{x}
puts "This is a #{x}"	#=> This is a string
```
*Some common methods of string*
##### *add string*
Concatenate two or many strings together, we can use many ways 
```ruby
string << obj
string + other_string
string.concat(other_string)
```
##### *string.insert(index, other_string)*
insert other_string at index in the string
```ruby
"abcd".insert(1, "I")	#=> "aIbcd"
"abcd".insert(-1, "I")	#=> "abcdI"
```
##### *String.include?(sub_string)*
Return true if String contains sub_string and return false if String don't contain sub_string
```ruby
"My name is Duyen".include?("Duyen")	#=> true
"My name is Duyen".include?("neyuD")	#=> false
```
##### *String.gsub(pattern, replacements)*
Return a new string base on old String. If pattern included in String, replace all of pattern into String by replacements
```ruby
a = "My name is x".gsub(/[x]/, "Duyen")
#=> a = "My name is Duyen"
```
*** we learned many other methods about Hash and String in Ruby-doc. This is just introduce some common methods of them.

