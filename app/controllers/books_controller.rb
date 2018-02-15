class BooksController < ApplicationController
  def index
    @books = Book.all
    # @reviews = Review.all
  end
end
