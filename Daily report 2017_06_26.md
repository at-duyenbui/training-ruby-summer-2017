### Daily report 
2017/06/26
### SCSS
SCSS supports more efficient CSS programming, organized and more clearly.
SCSS allows the use of variables, import file, inherits properties, ...

** First step, we need to install node-sass and setup it in project.
Open terminal at folder of project, run statement:
`node-sass -w --include-path scss css/sass/style.scss css/style.css`

#### Variables
Variables like a way store values. We can call back a variable with value be used many time.
*example*
at SCSS file:
```scss
	$menu-color: #b8b8b8;
	.div-menu{
		border-top: 1px solid $menu-color;
		ul{
			list-style-type: none;
			overflow: hidden;
			li{
				float: left;
				border-right: 1px solid $menu-color;
			}
		}
	}
```
build CSS:
```css
.div-menu {
  border-top: 1px solid #b8b8b8; }
  .div-menu ul {
    list-style-type: none;
    overflow: hidden; }
    .div-menu ul li {
      float: left;
      border-right: 1px solid #b8b8b8; }
```
_____
#### Nesting
SCSS support coder more clearly. Instead of we have to call selector form father-tag to point child-tag, SCSS allows us write code follow the nesting way like this:
```scss
.div-menu{   
	border-top: 1px solid $menu-color;
	nav{
		ul{
			list-style-type: none;
			overflow: hidden;
			li{
				float: left;
				border-right: 1px solid $menu-color;
				a{
					display: block;
					text-align: center;
					padding: 20px 10px;
					text-decoration: none;
				}
			}
		}
	}
}
```
build css file
```css
.div-menu {
  border-top: 1px solid #b8b8b8; }
  
.div-menu nav ul {
  list-style-type: none;
  overflow: hidden; }
  
.div-menu nav ul li {
  float: left;
  border-right: 1px solid #b8b8b8; }
  
.div-menu nav ul li a {
  display: block;
  text-align: center;
  padding: 20px 10px;
  text-decoration: none;}
```
_____
#### Import
SCSS has `import` help make the CSS file smaller. We can split a CSS file into several files with groups of usages, that help for development and upgrade easier.
*example*
```scss
/* reset_page.scss */
*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

/* style.scss */
@import 'reset_page';
.container{
	max-width: 1000px;
	margin: 0 auto;
}
```
______
#### Mixins
With a set of declarations that we want to reuse on the page, mixins support creating that group once and just call it for reuse. Even that, mixins also allow the use of parameters to dynamically change the value.
*example*
SCSS file
```scss
@mixin a-hover(){
	border: 1px solid;
	-webkit-box-shadow: 0 0 20px rgba(255, 255, 255, .2);
	-moz-box-shadow: 0 0 20px rgba(255, 255, 255, .2);
	box-shadow: 0 0 20px rgba(255, 255, 255, .5);
	text-shadow: 1px 1px 2px #427388;
}
a{
	&:hover{
		@include a-hover();
	}
}
```
build css file
```css
a:hover {
        background-color: #62c6f8;
        color: #fff;
        border: 1px solid;
        -webkit-box-shadow: 0 0 20px rgba(255, 255, 255, 0.2);
        -moz-box-shadow: 0 0 20px rgba(255, 255, 255, 0.2);
        box-shadow: 0 0 20px rgba(255, 255, 255, 0.5);
        text-shadow: 1px 1px 2px #427388; }
```
______
#### Extends / Inheritance
Using `@extend` with selector of an CSS property. We can take style of that selector and can override properties of it.
*example*
```scss
button{
	width: 35%;
	height: 35px;
	background-color: gray;
	text-align: center;
}
.run-button{
	@extend button;
	background-color: green;
}
.exit-button{
	@extend button;
	background-color: red;
}
```
______
#### Operators
We can do math in CSS file.
Using math operators like `+ - * /`
*example*
In SCSS file
```scss
.container{
	max-width: 320px / 1240px *100%;
	margin: 0 auto;
}
```
build css file
```css
.container{
	max-width: 25.8%;
	margin: 0 auto;
}
```

