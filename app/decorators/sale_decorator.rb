class SaleDecorator < ApplicationDecorator
  def sale_items
    1.times { object.sale_items.build  } if object.sale_items.blank?
    SaleItemDecorator.decorate_collection object.sale_items
  end
end