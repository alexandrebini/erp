class Sale < ActiveRecord::Base
  belongs_to :customer
  belongs_to :vendor
  has_many :items, class_name: SaleItem

  validates :customer, presence: true
  validates :vendor, presence: true
  validates :items, length: { minimum: 1 }
  validates :total, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :discount, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end