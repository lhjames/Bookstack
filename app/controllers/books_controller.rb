class BooksController < ApplicationController
  def index
    @authors = Author.all
    @books = Book.all
  end

  def show
    @author = Author.find_by_id(params[:id])
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new(book_params)
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@books)
    else
      render :new
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    # redirect_to root_path
  end

  private

  def book_params
    params.permit(:name, :rating, :author_id)
  end
end
