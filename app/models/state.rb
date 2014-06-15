class State < ActiveRecord::Base
  has_many :cities
  validates :name, presence: true
  validates :abbr, presence: true
end