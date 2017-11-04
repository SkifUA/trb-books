class Genre::Index < Trailblazer::Operation
  step :model!

  def model!(options, *)
    options['model'] = ::Genre.all
  end
end