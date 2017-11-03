module Book::Contract
  class Update < Reform::Form
    include Dry
    include Composition

    property :title
    property :author
    property :summary
    property :image
    property :genre_ids

    validation do
      required(:title).filled
      required(:author).filled
      required(:summary).maybe(min_size?: 10)
    end

  end
end