class Book::Create < Trailblazer::Operation
  class Present < Trailblazer::Operation
    step Model(Book, :new)
    step Contract::Build(constant: Book::Contract::Create)
  end

  step Nested(Present)
  step Contract::Validate(key: :book)
  step Contract::Persist()
  step :notify!

  def notify!(options, model:, **)
    options['result.notify'] = Rails.logger.info("New Book #{model.title}.")
  end
end