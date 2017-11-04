module Genre::Cell
  class Item < Trailblazer::Cell
    property :name

    def edit
      link_to 'edit', edit_genre_path(model)
    end

    def delete
      link_to 'delete', genre_path(model), method: :delete
    end
  end
end