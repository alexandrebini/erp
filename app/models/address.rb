class Address < ActiveRecord::Base
  belongs_to :addressable, polymorphic: true
  belongs_to :city
  validates :city, presence: true
  validates :street, presence: true
  validates :number, presence: true
  validates :postal_code, presence: true
end