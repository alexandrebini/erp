class Sale < ActiveRecord::Base
  belongs_to :customer
  belongs_to :vendor
  has_many :sale_items, class_name: SaleItem, inverse_of: :sale

  validates :customer, presence: true
  validates :vendor, presence: true
  validates :sale_items, associated: true, length: { minimum: 1 }
  validates :total, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :discount, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  accepts_nested_attributes_for :sale_items, allow_destroy: true,
    reject_if: proc { |attrs| attrs['quantity'].blank? }

  before_validation :set_total

  def total
    if new_record?
      sale_items.map { |item| item.total }.sum
    else
      super
    end
  end

  def set_total
    self.total = total
  end
end