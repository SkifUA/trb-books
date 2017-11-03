class Book < ApplicationRecord
  mount_uploader :image, BookUploader
end
