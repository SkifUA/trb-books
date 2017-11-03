module Book::Cell
  class Index < Trailblazer::Cell
    def total
      return "No posts" if model.size == 0
    end

    def new
      link_to 'New book', new_book_path
    end
  end
end