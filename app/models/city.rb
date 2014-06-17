class City < ActiveRecord::Base
  belongs_to :state
  validates :name, presence: true
  validates :state, presence: true

  class << self
    def from_name(name)
      where(name: name.split('-').first.strip).first
    end
  end
end