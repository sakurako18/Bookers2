class UsersController < ApplicationController

  def new
    @book = Book.new
  end

  def index
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/top'
  end


end
