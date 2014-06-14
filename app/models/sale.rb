class Sale < ActiveRecord::Base
  belongs_to :customer
  belongs_to :vendor
  has_many :items, class_name: SaleItem
  monetize :discount_cents
  monetize :total_cents
end