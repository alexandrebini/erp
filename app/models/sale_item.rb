class SaleItem < ActiveRecord::Base
  belongs_to :sale
  belongs_to :product

  validates :sale, presence: true
  validates :product, presence: true
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :quantity, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
  validates :total, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end