class ThirdParty < ActiveRecord::Base
  has_one :address, as: :addressable, dependent: :destroy
  has_many :contacts, dependent: :destroy
  has_many :taxpayers, dependent: :destroy

  validates :name, presence: true

  accepts_nested_attributes_for :address, :contacts, :taxpayers
end