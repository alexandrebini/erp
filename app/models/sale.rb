class Sale < ActiveRecord::Base
  belongs_to :customer
  belongs_to :vendor
  has_many :sale_items, class_name: SaleItem, inverse_of: :sale

  validates :customer, presence: true
  validates :vendor, presence: true
  validates :sale_items, length: { minimum: 1 }, associated: true
  validates :total, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :discount, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  accepts_nested_attributes_for :sale_items, allow_destroy: true,
    reject_if: proc { |attrs| attrs['quantity'].blank? }

  before_validation :set_total

  def total
    if new_record?
      p 'total getter', sale_items.map { |item| item.total }.sum
      sale_items.map { |item| item.total }.sum
    else
      super
    end
  end

  def set_total
    p 'total setter', total
    self.total = total
  end
end