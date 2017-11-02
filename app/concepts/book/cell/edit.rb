module Book::Cell
  class Edit < New

    def back
      link_to "Back", book_path(model.id)
    end

    def delete
      link_to "Delete Book", book_path(model.id), method: :delete
    end
  end
end