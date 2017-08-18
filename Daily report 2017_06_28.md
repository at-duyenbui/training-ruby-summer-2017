### Daily report 
2017/06/28
### Practice HTML and CSS
Some knowledge help code HTML and CSS more exactly:
-	Don't have block tag in `<a>` tag because `<a>` tag is an inline tag, it just cover other inline tag.
-	When code node-sass file, maximum of nested tag should be four.
-	Limit use of div tags without attributes. It's a good idea to set the class for the div tags to show the meaning of the div tag.
-	**Breadcrumb** is a type of secondary navigation schema. It create tree navigation from parent to child tags. Display path into browser. 
*example*
```htmlbars
<!-- HTML file -->
	<ul class="breadcrumb">
      <li><a href="">Trang chủ</a></li>
      <li><a href="">Dịch vụ y tế</a></li>
    </ul>
```
```css
.breadcrumb {
    list-style: none;
    font-size: 17px;
    position: absolute;
    top: 45%; }
    
.breadcrumb li {    /* get li tag inline*/
  display: inline; }
  
.breadcrumb li a {  /*design text for a tag*/
  color: black;
  text-decoration: none;
  text-transform: uppercase;
  font-size: 14px; }
  
.breadcrumb li a:hover {   /*design hover for a tag*/
  color: #01447e;
  text-decoration: underline; }
  
.breadcrumb li + li:before {   /*create symbol `/` between li tag and li tag*/
 padding: 8px;
 color: black;
 content: "/\00a0"; }
```
-	Create navigation with hierarchy menu, it should like this:
```htmlbars
	<ul>                           <!-- first order -->
		<li>
			<a> <!-- Link --> </a>
			<ul>                   <!-- second order -->
				<li>
					.....
				</li>
			</ul>
		</li>
	</ul>
```

