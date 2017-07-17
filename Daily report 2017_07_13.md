### Daily report
2017/07/13
### Active Record
Active record is the *Model* in MVC, which support interact with database such as description Object relation in model
#### Some queries in rails
-	Find a record by a value key. 
> User.find_by('name')  --> return **nil** if don't find correct value to map with
> User.find_by!('name')  --> return **Error** if don't find correct value to map with
> User.find(id)  --> return **exception** if don't find correct value to map with

-	Create new. It will rollback if have any errors.
> - user = User.new()
> user.save
> - User.create()

-	*`.valid?`* Runs all the validations within the specified context. Returns true if no errors are found, false otherwise
#### Validation
Data before interact with server database will go through 3 step validates.
JavaScript web ---> Ruby Model Validation ---> Transaction of SQL
In Ruby validation, we validate in model. Some common functions:
-	Not blank: 
```ruby
	validates :name,  presence: true
```
-	Don't have duplicate values
```ruby
	validates :user_name, uniqueness: true 
```
- Set length of field
```ruby
	validates :name, length: {maximum: 20}
```
- Create a format for field, use in specific action
```ruby
	validates :email, format: {with: '[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}' } , on: :create
```
- Define a function for a specific field
```ruby
validate :image_size
def image_size
	if image.size > 5.megabytes
		self.errors.add(:image, "Image's size less than 5 MB")
	end
end
```
#### Within model
-	Change name of model not the same with name of table in database, use:
```ruby
	self.table_name = 'name of table'
```
- **Enum**
For example, create set value-key for *role*
```ruby
	enum role: %w(member mod admin)
```
- We have 3 roles for option role when create. In database, role field have data like 0, 1, 2 which meaning:
	- 0 <---> member
	- 1 <---> mod
	- 2 <---> admin

#### Create database for development 
Create data in file `db/seed.rb`
Generate data with statement: `rails db:seed`	


