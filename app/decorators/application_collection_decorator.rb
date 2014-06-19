class ApplicationCollectionDecorator < Draper::CollectionDecorator
  include Concerns::TranslatableDecorator

  def model_name
    object.model_name
  end
end