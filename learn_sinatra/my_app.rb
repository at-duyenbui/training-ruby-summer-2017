class MyApp < Sinatra::Base

	$client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "15101995ngocduy", :database => "bookshelf")

	get '/books' do
		@books = ['Toan', 'Ly', 'Hoa']
		erb :book
	end

	get '/index' do
		@user = $client.query("SELECT * FROM users")
		erb :index
	end

	get '/users/new' do
		erb :new
	end

	post '/users' do
		@user = $client.query("insert into users (`username`, `address`) values (\'#{params['username']}\', \'#{params['address']}\')")
		redirect '/index'
	end

	get '/update/:id' do
		@user = $client.query("SELECT * FROM users where iduser = #{params['id']}")
		erb :update
	end

	post '/update' do
		query = "update users set `username` = \'#{params['username']}\', `address` = \'#{params['address']}\' where iduser = \'#{params['id']}\'"
		@user = $client.query(query)
		redirect '/index'
	end

	get '/delete/:id' do
		$client.query("delete from users where iduser = #{params['id']}")
		redirect '/index'
	end
end