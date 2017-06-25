### Daily report 
2017/06/20
## Introduce CSS 
CSS use for design HTML pages. It have a lot of work, help for HTML elements can be arranged like designer wanted ...
CSS have developed with CSS3
##### *syntax*
![syntax CSS](https://preview.ibb.co/deoUTQ/Screenshot_from_2017_06_25_11_09_04.png)

-	Selector points to the tag that CSS applies to.
-	Declaration of CSS are covered by symbols `{ }`
-	Declaration contains many property-values pairs.
-	Among of property-values pairs have to have symbol `;`
##### Selector
- There are three kinds of selector:
	- Class: `.class {  }`
	-	Id: `#id {   }`
	-	Call directly to the tag-name: `div{  }`
- For create CSS for the tag inside a group of selector, we call father-selector to points to child-selector
		`.father-selector .child-selector{    }`
- Each tag just have one ID and ID of each tag don't repeat in one page.
- Each tag can use many Class and Class can be use many times in one page.
##### Selectors with pseudo-class
*example*
`ul li:first-child`: select to the first li tag of group li be covered by ul tag.
`ul li:last-child` : select to the last li tag of group li be covered by ul tag.
`ul li:nth-child(index)` : select to the nth-index li tag of group li be covered by ul tag.

#### Text and font
In addition to the default fonts, we can get fonts from online sites. Recommend use roboto google-font.
Text have many property such as size, color, weight, decoration, ...
#### Box model
HTML tag can be include a box model. 
Some basic properties are margin edge, padding edge, content edge, border
* When design for multiple column and use `float`, box need to clear with pseudo-element
```
.box::after{
	display: block;
	content: "";
	clear: both;
}
```
A box.item have some basic properties such as width, height, background, float, border, box-shadow, margin, padding, ...

