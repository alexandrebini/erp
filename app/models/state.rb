class State < ActiveRecord::Base
  has_many :cities
  validates :name, presence: true
  validates :symbol, presence: true
end