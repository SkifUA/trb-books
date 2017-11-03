class Book < ApplicationRecord
  has_and_belongs_to_many :genres
  mount_uploader :image, BookUploader
end
