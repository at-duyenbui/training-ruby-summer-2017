### Daily report
2017/07/10
## JavaScript
### Browser Object Model (BOM)
The Browser Object Model (BOM) allow to methods and properties of JavaScript interact with browser
![BOM](https://preview.ibb.co/ngh5ja/bom.jpg)
#### Js window
The default object of browser is **window**, it mean we can call all functions of window throw *window*
```javascript
	window.innerWidth; // return inner width of browser (px)
	window.innerHeight; // return inner height of browser (px)
	var new_tab = window.open('http://google.com'); //window.open(url,name,options) - open a new browser in new tab
	new_tab.close(); //close tab
	window.moveTo(); // move the current window
	window.resizeTo(); // resize the current window
```
#### Js Location
The window.location can get information of current window address and redirect to new window
>window.location.[attributes]
```javascript
	window.location.href = 'url' // link to page have address url
	window.location.hash // get values behind '#' into address link
	window.location.reload // reload current page
```
#### Js History
```javascript
	window.history.back(); // back to previous page
	window.history.go('url'); // go to url page in the history list
	window.history.forward(); // back to next URL in the history list
```
#### Js Cookie
Cookie store temporary data in browser
To set cookie for browser: 
> document.cookie = 'username = anhduyen';
> document.cookie = 'age = 22';

#### Js Navigator
Navigator check information of browser
```javascript
navigator.appName // get app's name
navigator.language // get language of browser
navigator.cookieEnable // check cookie of browser
navigator.product // list Engine be used in browser
```
_____
### Ajax
Ajax (Asynchronous JavaScript and XML)
-	Update page without reload page
-	Receive data from server
-	Send data to server
-	Request data from server
```htmlbars
<html>
  <div id="test">
  <!-- Result with show here -->
  </div>
  <button type="button" onclick="load_ajax1()">Click</button>
  <script type="text/javascript">
	  function load_ajax1() {
	  var xmlhttp;
		if(window.XMLHttpRequest){
			xmlhttp = new XMLHttpRequest();
		}
		else{
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
				document.getElementById("test").innerHTML = xmlhttp.responseText;
			}
		};
		xmlhttp
		xmlhttp.open("GET", "../template/news.json", true);
		xmlhttp.send();
	}
  </script>
</html>
```

