### Daily report 
2017/06/22
### CSS
#### CSS Functions
CSS function be used as the values of CSS properties. 
Some common functions:
-	`rgb( )`: use for set color value
-	`attr( )`: get value of an attribute
	*example*
```htmlbars
<div data-content = "content"></div>
```
	
```css
div::after{
	content: attr(data-content) /* => content */
}
```
-	`calc( )`: use calculations instead of value of CSS properties
	*example*
```css
	width: calc(100% - 20px);
```
-	`scale( )`: use for scale elements, usually an image base on the arguments given.
And many other CSS functions.
_____
#### CSS position properties
To set position of elements, we need CSS position property with four values:
-	Fixed: fixed position follow browser, top-left of page.
-	Static: it set position of elements according the normal follow of page.
-	Absolute:  element overflows father element
-	Relative:   the element  is fixed like expected and holds the position of child elements.
_____
##### @media
This is rule for size, color or how to display. It helps for adapts to the devices.
*example*
```css
	@media print{  }  /* control print, use for print view all page*/
	@media screen and (max-width: 768px) /*Identify maximum width to display or screen*/
	/*Have many other values for @media*/
```

