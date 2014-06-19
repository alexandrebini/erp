class ApplicationDecorator < Draper::Decorator
  include Concerns::TranslatableDecorator

  delegate_all
end