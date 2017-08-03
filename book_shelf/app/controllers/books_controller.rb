class BooksController < ApplicationController
  before_action :set_book, only: %i[show edit update destroy]

  def index
    @books = Book.all
    render json: @books, each_serializer: Books::IndexSerializer
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      render json: @book, serializer: Books::ShowSerializer, status: :created
      '<p> created </p>'
      # redirect_to @book, notice: 'Add new book successful'
    else
      render json: @book.errors, status: :unprocessable_entity
      'errors'
      # render :new
    end
  end

  def show
    render json: @book, serializer: Books::ShowSerializer
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
    params.permit(:name, :author, :title, :isn)
  end

  def set_book
    @book = Book.find(params[:id])
  end
end
