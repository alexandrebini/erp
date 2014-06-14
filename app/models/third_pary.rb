class ThirdParty < ActiveRecord::Base
  has_one :address, as: :addressable
  has_many :contacts, as: :contactable
end