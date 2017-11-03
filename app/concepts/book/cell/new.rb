module Book::Cell
  class New < Trailblazer::Cell
    include ActionView::RecordIdentifier
    include ActionView::Helpers::FormOptionsHelper
    include SimpleForm::ActionViewExtensions::FormHelper
    def all_genres
      Genre.all
    end
  end
end