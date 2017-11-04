class Genre::Delete < Trailblazer::Operation
  step Model(Genre, :find_by)
  step :delete!

  def delete!(options, model:, **)
    model.destroy
  end
end