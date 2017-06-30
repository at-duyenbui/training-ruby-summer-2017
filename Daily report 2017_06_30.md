### Daily report 
2017/06/30
## Javascript
Javascript is the programming language for web and HTML.
Javascript support for design animation, hover, ... of web page and interact between Web browser and data type JSON from back-end server.
#### History
Javascript developed with many version. It have three populate versions
-	Edition 3: added Regular Expressions and try/catch.
-	Edition 5 - 5.1: added "strict mode" and support for JSON.
-	Edition 6 (ES6): added support for class and module.
#### Grammar and type 
##### Syntax
-	Basic
	-	Distinguish upcase letter and lowcase letter.
	-	Use standard unicode.
	-	Always have `;` 
	-	Space between properties and values.
	-	Reader from left to right
-	Data type
	-	null
	-	undefined
	-	boolean
	-	Numbers
	-	String 
	-	Object (Array, Date, Function, Regex)
-	Comment
	-	single line `// ...`
	-	multiple lines `/* ... */`
#### Storage
**Local storage**: web application will store data locally within user's browser. Store data until clear.
**Session storage**: store data for session. Data will lost when web tab closed.
#### About object
**object variables **
```javascript
var ob = new Object();
ob.message = 'This is message'
console.log(ob) // Object {message: "This is message"}
console.log(ob.message) // This is message
// -----------------------
var ob = {message: 'This is message'}
```

