module Book::Cell

  class Show < Trailblazer::Cell
    property :title
    property :author
    property :summary
    property :image


    def time
      model.created_at
    end

    def genres
      model.genres.map{ |g| g.name }.join(', ')
    end

    def book_img
      image_tag img
    end

    def edit_genres
      link_to 'Genres', genres_path
    end

    def edit
      link_to "Edit", edit_book_path(model.id)
    end

    def delete
      link_to "Delete", book_path(model.id), method: :delete, data: {confirm: 'Are you sure?'}
    end

    def back
      link_to "Back to books list", books_path
    end

    private

    def img
      model.image.model.image? ? model.image : "http://placehold.it/#{BookUploader::SIZE_MAIN[:height]}x#{BookUploader::SIZE_MAIN[:width]}"
    end
  end
end