# encoding: utf-8

class BookUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick
  SIZE_MAIN = {
      height: 350,
      width: 200
  }

  SIZE_THUMB = {
      height: 70,
      width: 40
  }

  process resize_to_fit: [SIZE_MAIN[:height], SIZE_MAIN[:width]]

  version :thumb do
    process resize_to_fill: [SIZE_THUMB[:height], SIZE_THUMB[:width]]
  end

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end


end
