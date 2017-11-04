class GenresController < ApplicationController
  def index
    run Genre::Index
    render cell(Genre::Cell::Index, result['model'])
  end

  def show
  end

  def new
    run Genre::Create::Present
    render cell(Genre::Cell::New, @form)
  end

  def create
    run Genre::Create do |result|
      return redirect_to genres_path
    end

    render cell(Genre::Cell::New, @form)
  end

  def edit
    run Genre::Update::Present
    render cell(Genre::Cell::Edit, @form)
  end

  def update
    run Genre::Update do |result|
      return  redirect_to genres_path
    end

    render cell(Genre::Cell::Edit)
  end

  def destroy
  end
end
