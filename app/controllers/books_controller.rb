class BooksController < ApplicationController
  def index
    run Book::Index
    render cell(Book::Cell::Index, result["model"]), layout: false
  end

  def show
    run Book::Show
    render cell(Book::Cell::Show, result["model"]), layout: false
  end

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

  def edit
    run Book::Update::Present
    render cell(Book::Cell::Edit, @form), layout: false
  end

  def update
    run Book::Update do |result|
      flash[:notice] = "#{result["model"].title} has been saved"
      return redirect_to book_path(result["model"].id)
    end

    render cell(Book::Cell::Edit, @form), layout: false
  end
end
