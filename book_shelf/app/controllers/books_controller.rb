class BooksController < ApplicationController

	layout 'main'

	def index
		@books = Book.all
	end

	def new
		@book = Book.new
	end

	def create
		@book = Book.new(book_params)
		if @book.save
			redirect_to @book, notice: "Add new book successful"
		else
			render new
		end
	end

	def show
		@book = Book.find(params[:id])
	end

	def edit
		@book = Book.find(params[:id])
	end

	def update
		@book = Book.find(params[:id])
		@book.update(book_params)
		redirect_to @book
	end

	def destroy
		@book = Book.find(params[:id])
		@book.destroy
		redirect_to action: 'index'
	end

	private
	def book_params
		params.require(:book).permit(:bookname, :author, :price, :image)
	end

end
