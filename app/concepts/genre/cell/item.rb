module Genre::Cell
  class Item < Trailblazer::Cell
    property :name

    def edit
      link_to 'edit', genres_path(model), method: :put
    end

    def delete
      link_to 'delete', genres_path(model), method: :delete
    end
  end
end