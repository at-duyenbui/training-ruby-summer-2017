
### Daily report
2017/07/06
## JavaScript 
#### Strict mode
-	Strict mode support catch common errors such as missing the key word *var* when declare new variables.
-	We should be call *Strict mode* on top of file .js:
```javascript
"use strict"
```
#### Function
Function is a set of statement that perform a task or a value. Function in JavaScript be defined by keyword **function**. Every function in JavaScript  is a function object.
-	Function declaration can be call both of after and before function be defined.
```javascript
// function declaration
	console.log(dec(2,5))    // 10
	function dec(x, y){
		return x * y;
	}
// function expression
	var exp = function(x,y){
		return x + y;
	}
	console.log(exp(2,5))    // 10
// another way to declare argument within the function
	var add = function () {
		return arguments[0] + arguments[1];
	};
```
**Closures**, we can nest function with a function
```javascript
function multi(m,n) {
	function agr1(x) {
		return x++;
	}
	function agr2(x) {
		return x--;
	}
	return agr1(m) * arg2(n);
}
multi(1,2);    // 2
```
_____
### DOM
#### Finding HTML elements
*syntax:*
```javascript
	//find element by ID
	document.getElementByID('id');
	//find elements by tag name
	document.getElementsByTagName('tag name');
	//find elements by class name
	document.getElementsByClassName('class name');
```
#### Changing HTML elements
*syntax:*
```javascript
	//add new html code in content of element
	element.innerHTML = [new html content];
	//set new attribute for element
	element.setAttribute(attribute, value);
	//style for element
	element.style.property = [new style];
```
#### Adding and deleting elements
*syntax:*
```javascript
	//add new element
	document.createElement(element);
	//add new element in content of current element
	document.appendChild(element);
	//select all element inside current element
	element.querySelectorAll('p');
```
***Example:***
```javascript
	var e = document.getElementByTagName('input');
	e.setAttribute('inputtype', 'text');
	e.style.fontSize = '20px';
	var enew = document.createElement('div');
	enew.innerHTML = '<h3>Title</h3>';
	e[0].appendChild(enew);
```

#### Event
Some function
-	onclick: happen when click to element.
-	ondbclick: happen when double click to element.
-	onchange: happen when value of `<html>` tag change, often use for form input.
-	onmouseover: happen when mouse hover to element.

**We can add event function for element
```javascript
element.addEventListener('click', function(){
	hover(1);	
});
function hover(i){
	if(i == 1){
		var e = document.getElementById('bt-submit');
		e.style.backgroud-color = 'gray';
	}
}
```

