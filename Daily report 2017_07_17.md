### Daily report
2017/07/17
### Active Record - Associations
#### Type of Association
#####	*Belongs_to* 
-	Belongs_to associations set up one - one connection with another model.
-	Ex: Each member just  belongs to one room
		-> Member *belongs_to* Room
```ruby
	class Member < ApplicationRecord
		belongs_to :room
	end
```
#####	*Has_one*
-	Has_one association set up one - one connection with another model.
-	Ex: Each room has one air-condition
		-> Room *has_one* air-condition
```ruby
	class Room < ApplicationRecord
		has_one :air-conditon
	end
```
#####	*Has_many*
-	Has_many association set up one - many connection with another model.
-	Ex: Each room have many members
		-> Room *has_many* member
```ruby
	class Room < ApplicationRecord
		has_many :member
	end
```
#####	*Has_one :through*
-	Has_one : through set up one - one connection with another model. The declaring model can be matched with another model by proceeding through a third model.
-	Ex: Each room has one air-condition and each air-condition has one bill for supplied
		-> Room *has_one* air-condition
			Room *has_one* bill, through air-condition
```ruby
	class Room < ApplicationRecord
		has_one :air-condition
		has_one :bill, through: => :air-condition
	end
```
#####	*Has_many :through*
-	Has_many :through set up one - many connection with another model. The declaring model can be matched with another model by proceeding through a third model.
-	Ex: Each room have many members, each member can belongs to many rooms. Between each department and each employee has a payroll.
```ruby
	class Room < ApplicationRecord
		has_many :member
		has_many :payroll, through: => :member
	end
```

