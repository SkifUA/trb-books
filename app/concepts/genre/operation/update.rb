class Genre::Update < Trailblazer::Operation
  class Present < Trailblazer::Operation
    step Model(Genre, :find_by)
    step Contract::Build(constant: Genre::Contract::Create)
  end

  step Nested(Present)
  step Contract::Validate(key: :genre)
  step Contract::Persist()
end