module Genre::Cell
  class Index < Trailblazer::Cell
    def total
      return 'Not Genres' if model.size == 0
    end

    def new
      link_to 'New Genre', new_genre_path
    end
  end
end