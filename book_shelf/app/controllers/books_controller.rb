class BooksController < ApplicationController
  layout 'main'

  before_action :set_book, only: %i[show edit update destroy]

  def index
    @books = Book.all
    render json: @books
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book, notice: 'Add new book successful'
    else
      render :new
    end
  end

  def show
    render json: @book
  end

  def edit; end

  def update
    @book.update(book_params)
    redirect_to @book
  end

  def destroy
    @book.destroy
    redirect_to action: 'index'
  end

  private

  def book_params
    params.require(:book).permit(:bookname, :author, :title, :isn)
  end

  def set_book
    @book = Book.find(params[:id])
  end
end
