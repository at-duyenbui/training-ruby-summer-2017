
### Daily report
13/06/2017
____
## Ruby loops, variables, ruby methods
## Git
### Ruby loops
Loops in ruby are used to execute the same block of code in the specified number of times
#### for loop
*syntax:*
>for variable [, variable, ...] in expression [do]
	statememt
end

*example:*
```ruby
for i in 1..50
	puts "#{i}"
end
```
#### while loop
*syntax:*
>while conditional [do]
   statement
end

*example:*
```ruby
i = 1
while i <= 50
	puts "#{i}"
	i += 1
end
```
#### until loop
*syntax:*
>until conditional [do]
   statement
end

*example:*
```ruby
i = 1
until i > 50
	puts "#{i}"
	i += 1
end
```
#### loop loops
*syntax:*
>loop [do]
   statement
end

loop loops need syntax **break if** to break the loop 
*example:*
```ruby
i =	1
loop do
	puts "#{i}"
	i += 1
	break if i > 50
end
```
#### .times iterator loop
*example:*
```ruby
5.times	do
	puts "Hello	world!"
end
```
{number of time}.times
_______
### variables
Variables	are	the	memory	locations	which	hold	any	data	to	be	used	by	any	program.
There	are	five	types	of	variables	supported	by	Ruby.
#### Global variables
Global variables begin with $.
*example:*
```ruby
$global_variable = 10
class Class1
   def print_global
      puts "Global variable in Class1 is #$global_variable"
   end
end
class Class2
   def print_global
      puts "Global variable in Class2 is #$global_variable"
   end
end

class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global
```
>output
Global variable in Class1 is 10
Global variable in Class2 is 10

#### Instance variables
Instance variables begin with @
*example:*
```ruby
class Customer
   def initialize(id, name, addr)
      @cust_id = id
      @cust_name = name
      @cust_addr = addr
   end
   def display_details()
      puts "Customer id #@cust_id"
      puts "Customer name #@cust_name"
      puts "Customer address #@cust_addr"
   end
end

# Create Objects
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

# Call Methods
cust1.display_details()
cust2.display_details()
```
>output
Customer id 1
Customer name John
Customer address Wisdom Apartments, Ludhiya
Customer id 2
Customer name Poul
Customer address New Empire road, Khandala

#### Class variables
Class variables begin with @@
*example:*
```ruby
class Customer
   @@no_of_customers = 0
   def initialize(id, name, addr)
      @cust_id = id
      @cust_name = name
      @cust_addr = addr
   end
   def display_details()
      puts "Customer id #@cust_id"
      puts "Customer name #@cust_name"
      puts "Customer address #@cust_addr"
   end
   def total_no_of_customers()
      @@no_of_customers += 1
      puts "Total number of customers: #@@no_of_customers"
   end
end

# Create Objects
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

# Call Methods
cust1.total_no_of_customers()
cust2.total_no_of_customers()
```
>output
Total number of customers: 1
Total number of customers: 2
#### Local variables
Local variables begin with a lowercase or _. The scope of a local variable ranges from class, module, def, or do to the corresponding end or from a block's opening brace to its close brace {}.
#### Constant
Constants begin with an uppercase letter. Constants defined within a class or module can be accessed from within that class or module, and those defined outside a class or module can be accessed globally.

### Methods
Ruby methods are used to bundle one or more repeatable statements into a single unit.
Method names should begin with a lowercase letter. 
*Syntax:*
>def method_name [(variable, ...)]
   statement
end

Call methods: method_name 
#### Splat Arguments
the splat argument:	( *	)
```ruby
def	what_up(greeting, *bros)	
	bros.each { |bro| puts "#{greeting}, #{bro}!" }	
end	
what_up("What up", "Justin", "Ben", "Kevin Sorbo")
```
Output:
"What	up,	Justin!"	
"What	up,	Ben!"	
"What	up,	Kevin	Sorbo!"

### Git
Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.
- git clone
- git pull
- git add
- git commit
- git push
- git brach
- git checkout - b
- pull request
- git merge
- git rebase
- git fetch
- git stash
- git reset
- how to fix conflict

