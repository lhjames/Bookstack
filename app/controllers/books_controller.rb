class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)
  end

  def destroy
    @book = Book.find(params[:id])
    @bok.destroy
    # redirect_to root_path
  end

  private

  def book_params
    params.require(:book).permit(:name, :rating, :author_id)
  end

end
