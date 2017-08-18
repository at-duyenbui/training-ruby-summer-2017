### Daily report 
2017/06/27
## Sinatra
#### About basic - MVC model
This is a basic MVC model.
Send request to routes for direct to controller.
Controller continue send request to model, call specific model to execute the query into database.
Model get data and return it for controller. Controller send result to view.
View receives the data and render the html file for show on the browser.
![mvc model](https://image.ibb.co/jViPxk/Untitled_Diagram.jpg)
####  MVC model in ruby basic
In Ruby, Routes be combined Controller.
Request be send directly to controller.
_____
### Sinatra
-	Sinatra is a gem support create web applications quickly in Ruby.
-	Sinatra reaches the REST with four basic methods
	-	POST   ->   create
	-	GET     ->   read
	-	PUT     ->   update
	-	DELETE ->  delete

-	Each method associated with the URL path creates a route:
```ruby
	get '/' do
	  #statements for show something to read
	end
	
	post '/' do
	  #statements for create
	end
	
	put '/' do
	  #statements for update
	end
	
	patch '/' do
	  #statements for modify
	end
	
	delete '/' do
	  #statements for delete
	end
	
	options '/' do
	  #statements for choice option
	end
	
	link '/' do
	  #statements link to something
	end
	
	unlink '/' do
	  #statements unlink
	end
```

-	Create file index**.erb** it means, HTLM and RUBY code embedded in it. We can call file **.erb**  in methods and pass parameters from routes method in the .rb file to that
```ruby
# in file .rb
	get '/index' do
		@param = "This is a param, we can pass it to file index.erb"
		erb :index
	end
```
-	To get parameters in .erb file, we call parameters in operator  `<% %>`
	-	Call parameter just one time: `<%= params %>`
	-	Call more than one times: `<% n.times %>`
```erb
	<!-- in file index.erb -->
	<h1> <%= @param %> </h1> <!-- show @param in h1 tag -->
```
-	Use operator `:` to create relative path
```ruby
	get '/users/:id' do # id will change
		.....
	end
```
_____
#### rack
Create a file name `config.ru` 
Set a port for run app with statement 
> rack -p [your port]
When call Rack, it will find config.ru file to run it fisrt.

