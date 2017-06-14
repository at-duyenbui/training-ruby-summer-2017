
### Daily report
13/06/2017
____
## Ruby loops, variables, ruby methods
## Git
### Ruby loops
Loops in ruby are used to execute the same block of code in the specified number of times
#### for loop
*syntax:*
>for variable [, variable, ...] in expression [do]
	statememt
end

*example:*
```ruby
for i in 1..50
	puts "#{i}"
end
```
#### while loop
*syntax:*
>while conditional [do]
   statement
end

*example:*
```ruby
i = 1
while i <= 50
	puts "#{i}"
	i += 1
end
```
#### until loop
*syntax:*
>until conditional [do]
   statement
end

*example:*
```ruby
i = 1
until i > 50
	puts "#{i}"
	i += 1
end
```
#### loop loops
*syntax:*
>loop [do]
   statement
end

loop loops need syntax **break if** to break the loop 
*example:*
```ruby
i =	1
loop do
	puts "#{i}"
	i += 1
	break if i > 50
end
```
#### .times iterator loop
*example:*
```ruby
5.times	do
	puts "Hello	world!"
end
```
{number of time}.times
_______
### variables
Variables	are	the	memory	locations	which	hold	any	data	to	be	used	by	any	program.
There	are	five	types	of	variables	supported	by	Ruby.
#### Global variables
Global variables begin with $.
*example:*
```ruby
$global_variable = 10
class Class1
   def print_global
      puts "Global variable in Class1 is #$global_variable"
   end
end
class Class2
   def print_global
      puts "Global variable in Class2 is #$global_variable"
   end
end

class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global
```
>output
Global variable in Class1 is 10
Global variable in Class2 is 10

#### Instance variables
Instance variables begin with @
*example:*
```ruby
class Customer
   def initialize(id, name, addr)
      @cust_id = id
      @cust_name = name
      @cust_addr = addr
   end
   def display_details()
      puts "Customer id #@cust_id"
      puts "Customer name #@cust_name"
      puts "Customer address #@cust_addr"
   end
end

# Create Objects
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

# Call Methods
cust1.display_details()
cust2.display_details()
```
>output
Customer id 1
Customer name John
Customer address Wisdom Apartments, Ludhiya
Customer id 2
Customer name Poul
Customer address New Empire road, Khandala

#### Class variables
Class variables begin with @@
*example:*
```ruby
class Customer
   @@no_of_customers = 0
   def initialize(id, name, addr)
      @cust_id = id
      @cust_name = name
      @cust_addr = addr
   end
   def display_details()
      puts "Customer id #@cust_id"
      puts "Customer name #@cust_name"
      puts "Customer address #@cust_addr"
   end
   def total_no_of_customers()
      @@no_of_customers += 1
      puts "Total number of customers: #@@no_of_customers"
   end
end

# Create Objects
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

# Call Methods
cust1.total_no_of_customers()
cust2.total_no_of_customers()
```
>output
Total number of customers: 1
Total number of customers: 2
#### Local variables
Local variables begin with a lowercase or _. The scope of a local variable ranges from class, module, def, or do to the corresponding end or from a block's opening brace to its close brace {}.
#### Constant
Constants begin with an uppercase letter. Constants defined within a class or module can be accessed from within that class or module, and those defined outside a class or module can be accessed globally.

### Methods
Ruby methods are used to bundle one or more repeatable statements into a single unit.
Method names should begin with a lowercase letter. 
*Syntax:*
>def method_name [(variable, ...)]
   statement
end

Call methods: method_name 
#### Splat Arguments
the splat argument:	( *	)
```ruby
def	what_up(greeting, *bros)	
	bros.each { |bro| puts "#{greeting}, #{bro}!" }	
end	
what_up("What up", "Justin", "Ben", "Kevin Sorbo")
```
Output:
"What	up,	Justin!"	
"What	up,	Ben!"	
"What	up,	Kevin	Sorbo!"

### Git
Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.
- git clone
- git pull
- git add
- git commit
- git push
- git brach
- git checkout - b
- pull request
- git merge
- git rebase
- git fetch
- git stash
- git reset
- how to fix conflict

@(Sample notebook)[Marxico|Manual|Markdown]

**Marxico** is a delicate Markdown editor for Evernote. With reliable storage and sync powered by Evernote, **Marxico** offers greate writing experience. 

- **Versatile** - supporting code highlight, *LaTeX* & flow charts,  inserting images & attachments by all means.
- **Exquisite** -  neat but powerful editor, featuring offline docs, live preview, and offering the [desktop client][1] and offline [Chrome App][2].
- **Sophisticated** - deeply integrated with Evernote, supporting notebook & tags, two-way bind editing.   

----------

[TOC]

## Introducing Markdown

> Markdown is a plain text formatting syntax designed to be converted to HTML. Markdown is popularly used as format for readme files, ... or in text editors for the quick creation of rich text documents.  - [Wikipedia](http://en.wikipedia.org/wiki/Markdown)

As showed in this manual, it uses hash(#) to identify headings, emphasizes some text to be **bold** or *italic*. You can insert a [link](http://www.example.com) , or a footnote[^demo]. Serveral advanced syntax are listed below, please press `Ctrl + /` to view Markdown cheatsheet.

### Code block
``` python
@requires_authorization
def somefunc(param1='', param2=0):
    '''A docstring'''
    if param1 > param2: # interesting
        print 'Greater'
    return (param2 - param1 + 1) or None
class SomeClass:
    pass
>>> message = '''interpreter
... prompt'''
```

### LaTeX expression
$$	x = \dfrac{-b \pm \sqrt{b^2 - 4ac}}{2a} $$

### Table
| Item      |    Value | Qty  |
| :-------- | --------:| :--: |
| Computer  | 1600 USD |  5   |
| Phone     |   12 USD |  12  |
| Pipe      |    1 USD | 234  |

### Diagrams
#### Flow charts
```flow
st=>start: Start
e=>end
op=>operation: My Operation
cond=>condition: Yes or No?

st->op->cond
cond(yes)->e
cond(no)->op
```
#### Sequence diagrams 
```sequence
Alice->Bob: Hello Bob, how are you?
Note right of Bob: Bob thinks
Bob-->Alice: I am good thanks!
```

> **Note:** You can find more information:

> - about **Sequence diagrams** syntax [here][3],
> - about **Flow charts** syntax [here][4].

### Checkbox
You can use `- [ ]` and `- [x]` to create checkboxes, for example:

- [x] Item1
- [ ] Item2
- [ ] Item3

> **Note:** Currently it is only partially supported. You can't toggle checkboxes in Evernote. You can only modify the Markdown in Marxico to do that. Next version will fix this.  


### Dancing with Evernote

#### Notebook & Tags
**Marxico** add `@(Notebook)[tag1|tag2|tag3]` syntax to select notebook and set tags for the note. After typing `@(`, the notebook list would appear, please select one from it.  

#### Title
**Marxico** would adopt the first heading encountered as the note title. For example, in this manual the first line `Welcome to Marxico` is the title.

#### Quick Editing
Note saved by **Marxico** in Evernote would have a red ribbon button on the top-right corner. Click it and it would bring you back to **Marxico** to edit the note. 

> **Note:** Currently **Marxico** is unable to detect and merge any modifications in Evernote by user. Please go back to **Marxico** to edit.

#### Data Synchronization
While saving rich HTML content in Evernote, **Marxico** puts the Markdown text in a hidden area of the note, which makes it possible to get the original text in **Marxico** and edit it again. This is a really brilliant design because:

- it is beyond just one-way exporting HTML which other services do;
- and it avoids privacy and security problems caused by storing content in a intermediate server. 

> **Privacy Statement: All of your notes data are saved in Evernote. Marxico doesn't save any of them.** 

#### Offline Storage
**Marxico** stores your unsynchronized content locally in browser storage, so no worries about network and broswer crash. It also keeps the recent file list you've edited in `Document Management(Ctrl + O)`.

> **Note:** Although browser storage is reliable in the most time, Evernote is born to do that. So please sync the document regularly while writing.

## Shortcuts
Help    `Ctrl + /`
Sync Doc    `Ctrl + S`
Create Doc    `Ctrl + Alt + N`
Maximize Editor    `Ctrl + Enter`
Preview Doc `Ctrl + Alt + Enter`
Doc Management    `Ctrl + O`
Menu    `Ctrl + M`

Bold    `Ctrl + B`
Insert Image    `Ctrl + G`
Insert Link    `Ctrl + L`
Convert Heading    `Ctrl + H`

## About Pro
**Marixo** offers a free trial of 10 days. After that, you need to [purchase](http://marxi.co/purchase.html) the Pro service. Otherwise, you would not be able to sync new notes. Previous notes can be edited and synced all the time.

## Credits
**Marxico** was first built upon [Dillinger][5], and the newest version is almost based on the awesome [StackEdit][6]. Acknowledgments to them and other incredible open source projects!

## Feedback & Bug Report
- Twitter: [@gock2][7]
- Email: <hustgock@gmail.com>

----------
Thank you for reading this manual. Now please press `Ctrl + M` and click `Link with Evernote`. Enjoy your **Marxico** journey!


[^demo]: This is a demo footnote. Read the [MultiMarkdown Syntax Guide](https://github.com/fletcher/MultiMarkdown/wiki/MultiMarkdown-Syntax-Guide#footnotes) to learn more. Note that Evernote disables ID attributes in its notes , so `footnote` and `TOC` are not actually working. 

  [1]: http://marxi.co/client_en
  [2]: https://chrome.google.com/webstore/detail/kidnkfckhbdkfgbicccmdggmpgogehop
  [3]: http://bramp.github.io/js-sequence-diagrams/
  [4]: http://adrai.github.io/flowchart.js/
  [5]: http://dillinger.io
  [6]: http://stackedit.io
  [7]: https://twitter.com/gock2

