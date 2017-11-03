class Book::Delete < Trailblazer::Operation
  step Model(Book, :find_by)
  step :delete!

  def delete!(options, model:, **)
    model.destroy
  end
end