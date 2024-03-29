class Contact < ActiveRecord::Base
  self.inheritance_column = nil
  enum type: %i(email phone mobile)

  validates :type, presence: true
  validates :value, presence: true
end