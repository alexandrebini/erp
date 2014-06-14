class Contact < ActiveRecord::Base
  TYPES = %w(email phone mobile)
  belongs_to :contactable, polymorphic: true
  belongs_to :city
  validates :symbol, presence: true, inclusion: { in: TYPES }
  validates :value, presence: true
end