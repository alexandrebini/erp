class Contact < ActiveRecord::Base
  belongs_to :contactable, polymorphic: true
  belongs_to :city
  validates :symbol, presence: true, inclusion: { in: %w(email phone mobile) }
  validates :value, presence: true
end