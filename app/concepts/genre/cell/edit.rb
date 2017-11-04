module Genre::Cell
  class Edit < New
    def back
      link_to 'Back', genres_path
    end
  end
end