### Daily report
2017/07/12
### Prototype - based programming
In JavaScript, the inheritance is implemented through the **prototype**. When we call the property or function of an object, JavaScript will find inside the object itself, if not, then look up its parent.
#### Namespace
Namespace in JS create global object. All methods, functions, variables become properties of that object.
```javascript
var greeting = new Object;
greeting.action = 'Hello';
```
#### Class
JavaScript use function as constructor of class. We should Up case start letter of Class's name.
Declare class like a function.
```javascript
// Declare class first way
var Animal = function() {};
//Declare class second way
function Animal(){};
var dog = new Animal();
```
#### Object
Object is a instance of class
`dog` is a instance of 	`Animal`
>var dog = new Animal();

#### Constructor
Not need constructor method in JavaScript. 
The constructor is used to call methods to prepare for use object.
```javascript
var Animal = function(){
	this.name = 'Pororo';
};
```
#### Properties
```javascript
var Dog = function(sound){
	this.sound = sound;       // 'this.sound' is a example of property	
}
```
#### Methods
```javascript
var Animal = function(sound, available){
	var name = 'Act';    // private 
	this.sound = sound;  // public
	this.available = available;
};
// add method
Animal.prototype.run = function(){
	console.log("Run: " + this.available);
};
var dog = new Animal("Gau", 5)
dog.run();
```
#### Inheritance
JavaScript just have single Inheritance
```javascript
function Animal(){
	this.sound = 'A';
	this.action = 'go';
	this.run = function(){
		return this.action * 2;
	};
};
function Dog(action){
	this.action = action;
};
Dog.prototype = new Animal();    // Dog inheritance Animal
var lucky = new Dog('run');
lucky.run();
```

