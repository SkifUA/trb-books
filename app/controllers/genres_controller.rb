class GenresController < ApplicationController
  def index
    run Genre::Index
    render cell(Genre::Cell::Index, result['model'])
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
