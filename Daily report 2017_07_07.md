### Daily report
2017/07/07
## Rails 
#### Config Routes
Rails have file Routes.rb. Set of routes rules placed in `config/routes.rb`
| URI Pattern	|Controller#Action|
| :-------- | :-------:|
|  get  /users | users#index |
| POST  /users     |   users#create |
| GET  /users/:id/edit | users#edit |
|PATCH  /users/:id|users#update|
|PUT    /users/:id|users#update| 
|DELETE /users/:id|users#destroy|                                                                 

-	We can declare **resources** for one controller, it will render eight common routes about CRUD.
```ruby
	# routes CRUD for users
	resources :users
```
-	We can create nested resources
```ruby
	resources :posts do
		resources :comments
	end
```
-	Select all routes be created
>$ rails routes

-	Create controller, for example create controller for users
>$ rails g controller users

-	View file have to set same name with it's action
-	If you want to create another routes except eight common routes, rails support:
	-	**collection**: create action right after controller 
	-	**member**:  create action for each object of controller
```ruby
resources :posts do
	collection do
		get 'search'     # GET /posts/search => posts#search
	end
	member do
		get 'comment'    # GET /posts/:id/comment => posts#comment  
	end
end
```
______
#### Config DB
-	 Config database in database.yml file
```ruby
# default config
default: &default
  adapter: mysql2
  user: root
  password: 123456789
  pool: 5
  timeout: 5000
  host: localhost
  encoding: utf8
  
# we should setup database for specific environment   
# config for development environment
development:
  <<: *default
  database: book_shelf_development

# config for test environment
test:
  <<: *default
  database: book_shelf_test

# config for production environment
production:
  <<: *default
  database: book_shelf_production
```
-	After config database, execute statement in terminal in order to create database
>$ rails db:create

-	Create model for object, example create model for user and render migrate file
>$ rails g model user

-	After setup model, we need create table of object in database
>$ rails db:migrate

-	**Some class methods of active records. For example with Book:
	-	Book.create(name: "Doraemon", author: "Fuji")
	-	Book.all
	-	Book.first
	-	book = Book.find_by(name: 'Doraemon')
	-	book.save
	-	Book.update_all "createday: '2017-07-07' "
	-	book.destroy

