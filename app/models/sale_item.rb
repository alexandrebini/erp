class SaleItem < ActiveRecord::Base
  belongs_to :sale, inverse_of: :sale_items
  belongs_to :product

  validates :sale, presence: true
  validates :product, presence: true
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :quantity, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
  validates :discount, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :total, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  before_validation :set_product_info

  def product_attributes=(attrs)
    self.product = Product.where(name: attrs[:name]).first
  end

  def product_attributes
    product.attributes if product
  end

  def price
    if new_record? && product
      product.price
    else
      super
    end
  end

  def total
    if new_record? && product
      price * quantity - discount.to_i
    else
      super
    end
  end

  def set_product_info
    self.price = price
    self.total = total
  end
end