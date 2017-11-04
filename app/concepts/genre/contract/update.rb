module Genre::Contract
  class Update < Reform::Form
    include Dry

    property :name

    validation do
      required(:name).filled
    end
  end
end