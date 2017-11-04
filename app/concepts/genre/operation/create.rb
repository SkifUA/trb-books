class Genre::Create < Trailblazer::Operation
  class Present < Trailblazer::Operation
    step Model(Genre, :new)
    step Contract::Build(constant: Genre::Contract::Create)
  end

  step Nested(Present)
  step Contract::Validate(key: :genre)
  step Contract::Persist()
  step :notify!

  def notify!(options, model:, **)
    options['result.notify'] = Rails.logger.info("New Genre #{model.name}.")
  end
end