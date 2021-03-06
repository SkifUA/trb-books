require "reform"
require "reform/form/dry"

module Book::Contract
  class Create < Reform::Form
    include Dry

    property :title
    property :author
    property :summary
    property :image
    property :genre_ids

    validation  do
      required(:title).filled
      required(:author).filled
      required(:summary).maybe(min_size?: 10)
    end
  end
end