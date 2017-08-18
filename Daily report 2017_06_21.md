## Daily report 
2017/06/20
### Closure (block, proc, lambda)
### Blocks
Block is a set of statements. Block is not a object. 
##### *syntax*
> {............}   
>  'or'
>  do
>  .......
>  .......
>  end

We can call a block instead of a methods with the keyword **yield** 
##### *example*
```ruby
def plus_one
	arr = [1,2,3]
	arr.each { |e| yield(e) } 
end
plus_one {|n| puts n+1}
#=> 2
#=> 3
#=> 4
```
_____
### Procs
Proc is a class, it can contain a block.
If use symbol **'&'** previous a variable, that variable will be convert to **proc** 
##### *syntax*
>  Proc.new {......}   
>  'or'
>  Proc.new do
>  ......
>  ......
>  end
>  'or'
>  proc {......}
>  'or'
>  proc do
>  .......
>  .......
>  end

Calling a proc use name_proc.call
Proc don't care about the number of arguments
##### *example*
```ruby
def plus_one(&add)
	arr = [1,2,3]
	arr.each { |e| add.call(e,1) } #proc don't care argument 1 
end
plus_one {|n| puts n+1}
#=> 2
#=> 3
#=> 4
```
_____
### Lambda
Lambda is an object of Proc. It like proc, but it care about the number of arguments
##### *syntax*
>  lambda {......}   
>  'or'
>  -> (arguments) {.......}

##### *example*
```ruby
lam = lambda { |x| puts x }
lam.call(2)
#=> 2
```
### Proc vs Lambda
-	number of argument
	-	Proc don't care about the number of argument
	-	Lambda care about the number of argument
	
-	statement 'return'
	-	'Return' in proc will return of define, it will exit define
	-	'Return' in lambda just return of ifself, it will exit that lambda.
_____
### Debug in Ruby
*syntax*
> ruby -r debug [file_name]

It have a gem support for debug is **gem pry**
	-	Add gem into file.rb use: **require 'pry'**
	-	Debug: **binding.pry**
_____
### Connect Ruby with Mysql
Install gem mysql2


