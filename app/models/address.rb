class Address < ActiveRecord::Base
  belongs_to :addressable, polymorphic: true
  belongs_to :city
  validates :city, presence: true
  validates :street, presence: true
  validates :number, presence: true
  validates :postal_code, presence: true

  def city_attributes=(attrs)
    name = attrs[:name].split('-').first.strip
    self.city = City.where(name: name).first
  end
end