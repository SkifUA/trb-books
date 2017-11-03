module Book::Cell

  class Show < Trailblazer::Cell
    property :title
    property :author
    property :summary
    property :image


    def time
      model.created_at
    end

    def show_image
      image_tag model.image
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
  end
end