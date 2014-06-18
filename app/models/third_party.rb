class ThirdParty < ActiveRecord::Base
  has_one :address, as: :addressable, dependent: :destroy
  has_many :contacts, dependent: :destroy
  has_many :taxpayers, dependent: :destroy

  validates :name, presence: true

  accepts_nested_attributes_for :address, allow_destroy: true,
    reject_if: proc { |attrs| attrs['name'].blank? }
  accepts_nested_attributes_for :contacts, allow_destroy: true,
    reject_if: proc { |attrs| attrs['value'].blank? }
  accepts_nested_attributes_for :taxpayers, allow_destroy: true,
    reject_if: proc { |attrs| attrs['value'].blank? }
end