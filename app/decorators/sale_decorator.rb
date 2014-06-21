class SaleDecorator < ApplicationDecorator
  decorates_association :sale_items

  def sale_items
    3.times { object.sale_items.build  } if object.sale_items.blank?
    SaleItemsDecorator.decorate object.sale_items
  end
end