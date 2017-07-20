# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# arr = ['facebook', 'gplus', 'email']

# 50.times do |i|
# 	User.create(user_name: Faker::Internet.user_name,
# 							email: Faker::Internet.email,
# 							password: Faker::Internet.password(8),
# 							name: Faker::Name.name,
# 							gender: rand(0..2),
# 							birthday: Faker::Date.birthday(17, 65),
# 							role: rand(0..2),
# 							avatar: Faker::Avatar.image,
# 							provider: "#{arr[rand(0..2)]}",
# 							uid: Faker::Internet.free_email)
# end

# 300.times do |e|
# 	Book.create(name: Faker::Book.title,
# 							author: Faker::Book.author,
# 							title: "title #{e}",
# 							isn: Faker::Number.hexadecimal(12))
# end

# 30.times do
# 	Cart.create(user_id: rand(User.count))
# end

30.times do
	Order.create(cart_id: User.all.ids[rand(User.count)])
end