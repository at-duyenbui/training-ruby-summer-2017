### Daily report 
2017/07/04
## Javascript
####  Variables
-	Use keyword ***var*** : variables can be repeated used and override. ***var*** just be scoped if it be defined in function. ***Var*** is common variables type.
-	Use keyword ***let*** : variables be defined in function or block and be scoped in it. ***let*** variables like local variables.
-	Use keyword ***const*** : variable is a constant variable. Values can't be change. 
*example*
```javascript
if(true){
	let a = 5;
	console.log(a);      // => 5
}
console.log(a);       // not thing to print

if(true){
	var b = 5;
	console.log(b)     // => 5
}
console.log(b)        // => 5
```
-	Javascript work with three primitive data type
	-	Number
	-	String
	-	Boolean

Use `typeof` to check data type of a variable 
```javascript
var test = "abc";
console.log(typeof test);     // => String
```
#### Control flow
Javascript have two type of control follow
-	`if - else`
*syntax:*
```javascript
	if(condition){
		// statements
	} else if{
		// statements
	} else{
		// statements
	}
```
-	`switch - case`
*syntax:*
```javascript
switch (expression){
	case condition 1:
		//statements
		break;
	case condition 2:
		//statements
		break;
	default:
		//statements
}
```
#### Loop
####  For loop
```javascript
	for(initialize; stop condition; step expression){
		//statements
	}
```
*example:*
```javascript
// print number from 0 to 9
	for(var i = 0; i < 10; i++){
		console.log(i);
	}
```
-	If use **for** loop with element in **array** or **object**, recomment with this syntax:
```javascript
	for(variable in object){
		//statements
	}
```
*example:*
```javascript
	var obj = {name: "duyen", age: "22"};
	for(var i in obj){
		console.log(obj[i]);
	}
	// => duyen
	// => 22
```
-	**forEach** is a method calls a provided function once for each element in an array, in order or object.
```javascript
	arr.forEach(function(variable){
		//statement
	})
```

#### While loop
*syntax:*
```javascript
	while(expression){
		// statements if expression is true
	}

	do{
		//statements
	} while(expression)
```
#### Operator
-	Addition `+`
-	Subtraction `-`
-	Multiplication `*`
-	Division `/`
-	Modulus `%`
-	Increment `++`
-	Decrement `--`


