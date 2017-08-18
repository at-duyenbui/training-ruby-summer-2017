class BookStore < Sinatra::Base
	$connection = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "15101995ngocduy", :database => "bookshelf")

	get '/index' do
		@books = $connection.query("select * from books")
		erb :index
	end

	get '/detail/:idbook' do
		@book = $connection.query("select * from books where idbooks = #{params['idbook']}")
		erb :detail
	end

	get '/order/:idbook' do
		@book = $connection.query("select * from books where idbooks = #{params['idbook']}")
		@users = $connection.query("select * from users")
		erb :order
	end

	post '/buy' do
		$connection.query("insert into orders (`iduser`, `idbook`, `quatity`) VALUES (#{params[:iduser]}, #{params[:idbook]}, #{params[:quatity]})")
		redirect "/detail/#{params[:idbook]}"
	end

	get '/vieworder' do
		@users = $connection.query("select * from users")
		erb :vieworder
	end

	get '/userorder' do
		# binding.pry
		query = "SELECT orders.idorder, books.booksname, orders.quatity FROM orders join users on orders.iduser = users.iduser join books on orders.idbook = books.idbooks where users.iduser = #{params['iduser']}"
		@orders = $connection.query(query)
		@user = $connection.query("select * from users where iduser = #{params['iduser']}")
		erb :userorder
	end

	get '/books' do
		@books = $connection.query("select * from books")
		erb :listbook
	end

	get '/books/new' do
		erb :new
	end

	post '/insert' do
		@filename = params[:file][:filename]
		file = params[:file][:tempfile]
		path = "/images/#{@filename}"
		File.open("./public/#{path}", 'wb') do |f|
	    	f.write(file.read)
	    end
		@newbook = $connection.query("insert into books (`booksname`, `author`, `image`, `price`, `information`) values (\'#{params['book_name']}\', \'#{params['book_author']}\', \'#{path}\', \'#{params['book_price']}\', \'#{params['book_info']}\')")
		
		redirect '/books'
	end

	get '/update/:idbo' do
		@book = $connection.query("select * from books where idbooks = #{params['idbo']}")
		erb :update
	end

	put '/update' do
		if params[:file] != nil
			# binding.pry
			@filename = params[:file][:filename]
			file = params[:file][:tempfile]
			path = "/images/#{@filename}"

			File.open("./public/#{path}", 'wb') do |f|
		    	f.write(file.read)
	    	end
		else
			path = "#{params['book_image']}" 
		end

	    @query = "update books set booksname = \"#{params[:book_name]}\", author = \"#{params[:book_author]}\", image = \"#{path}\", price = \"#{params[:book_price]}\", information = \"#{params[:book_info]}\" where idbooks = #{params[:id]}"
		@book = $connection.query(@query)
		redirect '/books'
	end

	get '/delete/:id' do
		# binding.pry
		# @_method = "delete"
		@delete = $connection.query("delete from books where idbooks = #{params['id']}")
		redirect '/books'
	end

end