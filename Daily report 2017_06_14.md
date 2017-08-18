
### Daily report
14/06/2017
____
## HTML - form and elements used into form
#### form tag
- form tag create a form that allowing user input information
- form tag submit data to server
##### *structure:*
- form tag has attribute **action** is  the required attribute. Attribute **action** link to where to send data of form.
- form tag have others attributes such as *method*, *name*, ...
- form tag can contain input with element fields
- form tag can contain others tag 

*syntax:*
```htmlbars
<form action="#">
	statement
</form>
```
_____
#### input tag
- The input tag is used for the user to enter or select information.
- The input tag have several types such as *text*, *password*, *check box*, *radio*, *text area*, *button*, ...
- Should use *label* tag to create label for input tag. Declare attribute *for* of label tag same value as attribute *id* of input tag in order to group them.
_____
#### *example:*
```htmlbars
<form action="test_submit" method="get" accept-charset="utf-8">
		<div>
			<label for="name">Username</label>
			<input type="text" name="username" id="name">
		</div>
		<div>
			<label for="password">Password</label>
			<input type="password" name="pass" id="password">
		</div>
		<div>
			<label for="mail">Email</label>
			<input type="email" name="email" id="mail">
		</div>
		<div>
			<label for="gen">Gender</label>
			<input type="radio" name="gender" id="gen" value="Male" checked>
			<input type="radio" name="gender" id="gen" value="Female">
			<input type="radio" name="gender" id="gen" value="Other">
		</div>
		<div>
			<label for="content">Content</label>
			<textarea id="content" name="contents" cols="50" rows="4"></textarea>
		</div>
		<div>
			<button type="submit" name="submit">Submit</button>
		</div>
	</form>
```
output:
![output](http://image.ibb.co/kgQxq5/Screenshot_from_2017_06_15_08_34_55.png)
_____
#### introduce about template engines
Template supports developer coding faster and easier with many helpful
#### introduce about coding convention
Coding convention are set of rules


