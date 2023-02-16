class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  def index
    @books = Book.all
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/top'
  end

  def edit
  end

  private

  def list_params
    params.require(:book).permit(:title, :body)
  end

end
