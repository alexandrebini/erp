require 'active_support/concern'
module Concerns::TranslatableDecorator
  extend ActiveSupport::Concern

  def l(attr)
    if object.respond_to?(:human_attribute_name)
      object.human_attribute_name(attr)
    else
      object.class.human_attribute_name(attr)
    end
  end
end
