
### Daily report
13/06/2017
____
## Ruby loops, variables, ruby methods
## Git
### Ruby loops
Loops in ruby are used to execute the same block of code in the number of times
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
Variables	hold	any	data	to	be	used	by	any	program.
There	are	five	types	of	variables	supported	by	Ruby.
#### Global variables
Global variables begin with $.
*example:*
```ruby
$global_variable = 10
class Class1
   def print_global
      puts "Class1 is #$global_variable"
   end
end
class Class2
   def print_global
      puts "Class2 is #$global_variable"
   end
end

class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global
```
>output
Class1 is 10
Class2 is 10

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

cust1 = Customer.new("1", "John", "ABC")
cust2 = Customer.new("2", "Poul", "abc")

cust1.display_details()
cust2.display_details()
```
>output
Customer id 1
Customer name John
Customer address ABC
Customer id 2
Customer name Poul
Customer address abc

#### Class variables
Class variables begin with @@
*example:*
```ruby
class Customer
   @@no_of_customers = 0
   def init(id, name, addr)
      @cust_id = id
      @cust_name = name
      @cust_addr = addr
	@@no_of_customers += 1
   end
   def total_no_of_customers()
      puts "#@@no_of_customers"
   end
end

cust1 = Customer.new("1", "John", "ABC")
cust1.total_no_of_customers()

cust2 = Customer.new("2", "Poul", "abc")

cust1.total_no_of_customers()
cust2.total_no_of_customers()
```
>output
2
2
#### Local variables
Local variables begin with a lowercase or _. The scope of a local variable ranges from class, module, def, or do to the corresponding.
#### Constant
Constants begin with an uppercase letter. Constants defined within a class or module can be call within that class or module.

### Methods
Ruby methods are used for one or more repeatable statements into a single unit.
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
____
### Git
Git is a free and open source distributed version control system designed to handle everything into projects efficiency.
- git clone: create folder local of project included all of project in server at that time.
- git pull: synchonous server and local
- git add: group all file that have changed or new file at local
- git commit: packing what have been grouped by "git add" and create key for that
- git push: push what have been committed from local to server
- git branch: check branch is using current
- git checkout - b [name of branch]: create new branch and switch to this branch
- pull request: send request merge from a branch to master
- git merge: merge code from branch to other branch that commits are arraged by time
- git rebase: merge code from branch to other branch prioritized for commits of branch using "git rebase"
- git chery-pick: take a specific commit
- git stash: push file that haven't finished yet to stack
- git reset --hard --soft: delete the lasted commit
- how to fix conflict

