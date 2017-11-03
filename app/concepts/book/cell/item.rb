module Book::Cell
  class Item < Trailblazer::Cell
    def title
      link_to model.title, model unless model == nil
    end

    property :author

    def created_at
      model.created_at.strftime("%d %B %Y")
    end

    def book_img_thumb
      image_tag img_thumb
    end

    private

    def img_thumb
      model.image.thumb.model.image? ? model.image.thumb : "http://placehold.it/#{BookUploader::SIZE_THUMB[:height]}x#{BookUploader::SIZE_THUMB[:width]}"
    end
  end
end