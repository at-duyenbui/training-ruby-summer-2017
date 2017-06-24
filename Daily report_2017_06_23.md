### Daily report 
2017/06/23
## Classes - Modules
### Class
Ruby is an object-oriented programming language. All objects have attributes and methods. Object is an instance of class. Class is a constructor to create an object with model of attributes and methods. 
##### *syntax*
```ruby
class ClassName
	#statements
end
```
Class name be created follow camel case, start with an up-case letter.
When create a class, we must create methods **initialize** is a constructor for class. When create an instance, it will call methods initialize first.
##### *example:*
```ruby
class People
	def initialize(name, age, country)
		@name = name
		@age = age
		@country = country
	end
end
people = People.new("Duyen", 22, "Viet Nam")
```
#### Getter and Setter
Getter and setter be created to interact with attribute of instance. 
##### *syntax*
```ruby
# way 1
def name	# getter
	@name
end
def name=(str)	# setter
	@name = str
end
# way 2
attr_reader :name, :age, :country	# getter
attr_writer :name, :age, :country # setter
# way 3, in this way, getter and setter will be created by one line statement
attr_accessor :name, :age, :country
```
#### Class methods
Classes have two kinds of methods. Instance-methods like normal methods like others languages, objects of class can call instance-methods.
Ruby has class-methods are methods of class. Only class can call class-methods.
If has many class methods, ruby support another way, class self. Class self contain all class-methods of current class.
##### *example*
```ruby
class People
	def initialize(name, age, available)
		@name = name
		@age = age
		@available = available
	end
	def People.action    # class-methods
		puts @age * @available
	end
	def hello   # instance-methods
		puts "Hello everyone. My name is #{@name}"
	end
	class << self
		def sing(void_level)
			void_level * @available
		end
		def run(run_level)
			run_level * @available
		end
	end
end

p = People.new("Duyen", 22, 7)
People.action	# 154
p.hello		# Hello everyone. My name is Duyen
```
#### Inheritance
Sub class using or overriding methods and attributes of father class.
Ruby support for single inheritance.
*syntax*
```ruby
class SubClass < FatherClass
	#statements
end
```
#### private and public methods
To Define a private or public methods, we just put keyword 'private' or 'public' before create methods.
Private methods just be call inside class contain it.
Public methods can be call inside or outside class.
Methods if don't have any keyword will be set default 'public'
```ruby
class ClassName
	public
	def public_method
	end
	private
	def private_method
	end
end
```
_____
### Modules
Module contains a set of methods and constants. Module help distinguish methods multiple use with class. 
Module can contains other modules or class.
Module can be call with keyword 'include' or 'extend'
- include[module] : all methods of module are methods of class
- extend[module] : module will be a self-class
*example*
```ruby
module Action
	def run(run_level)
		run_level
	end
end
class Person
	include Action
	def initialize(name, age, run_level)
		@name = name
		@age = age
	end
end
p = People.new("Duyen", 22, 7)
p.run #=> 7
```


