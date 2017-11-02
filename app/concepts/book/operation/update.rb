class Book::Update < Trailblazer::Operation
  class Present < Trailblazer::Operation
    step Model(Book, :find_by)
    step Contract::Build( constant: Book::Contract::Create )
  end

  step Nested(Present)
  step Contract::Validate(key: :book)
  step Contract::Persist()
end