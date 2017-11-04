module Genre::Cell
  class New < Trailblazer::Cell
    include ActionView::RecordIdentifier
    include ActionView::Helpers::FormOptionsHelper
    include SimpleForm::ActionViewExtensions::FormHelper


    def to_books
      link_to 'To Books', books_path
    end
  end
end