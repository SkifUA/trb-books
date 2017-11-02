class Book::Index < Trailblazer::Operation
  step :model!

  def model!(options, *)
    options["model"] = ::Book.all.reverse_order
  end
end