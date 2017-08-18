
### Daily report
15/06/2017
____
## Data structures 
### Array
Array are a collection of element is an object. Array starts counting at number 0.
##### *initialization*
```ruby
# initialize an empty array with size 0
array = Array.new
or array = []
# initialize an array with 'nil' element, size 1
array_1 = Array.new(1)
or array = [nil]
# initialize an array two elements with same values 1, size 2
array_2 = Array.new(2, 1)
or array_2 = [1,1]
# initialize an array that have algorithm for set elements
array_3 = Array.new(5) {|i| i+3}
#=> [3, 6, 9, 12, 15]
```
##### *add an element to the end of list*
```ruby
array.push(" ")
'or' array << " "
'or' array[array.size] = " "
```
##### *get last element of list *
```ruby
array.last
'or' array[array.size - 1]
'or' array[-1]
```
##### *get last element of list *
```ruby
array.last
'or' array[array.size - 1]
'or' array[-1]
```
#### *get elements at the position*
```ruby
array[index] # get the element at "index" position
array[start, length] # get elements start at "start" position and length elements from "start" 
```
#### *change elements of list with other object*
```ruby
array[index] = obj
array[start, length] = obj
array.collect{|item| block} # create a new array contains all values have been changed from items of 'array' list by block
```
*Array class has many other support methods *
______
### Hash
Hash are a collection of key-value pairs. 
**Structures** of Hash look like:
```ruby
hash = {
	"key1" => value1,
	"key2" => value2,
	"key3" => value3
}
```
**Initialization**
```ruby
hash = Hash.new # initialize an empty hash
```
We can initialize a hash with just a value, hash will assign value to the key that is an any integer
*example*
```ruby
hash_ = Hash.new ("duyen")
puts hash_["#{hash_[100]}"] #=> duyen
```

