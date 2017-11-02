class BooksController < ApplicationController
  def new
    run Book::Create::Present
    render cell(Book::Cell::New, @form), layout: false
  end

  def create
    run Book::Create do |result|
      return redirect_to books_path
    end

    render cell(Book::Cell::New, @form), layout: false
  end
end
