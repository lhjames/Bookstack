class AuthorsController < ApplicationController
  def index
    @authors = Author.all
    @books = Book.all
  end

  def show
    @author = Author.find(params[:id])
    @book = Book.find_by_id(params[:id])
  end

  def new
    @author = Author.new(author_params)
    @book = @author.books.build
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
  end

  private

  def author_params
    params.permit(:name, :books)
  end
end
