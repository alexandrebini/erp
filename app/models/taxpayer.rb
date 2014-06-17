class Taxpayer < ActiveRecord::Base
  self.inheritance_column = nil

  belongs_to :third_party
  enum type: %i(cpf rg cpnj ie)

  validates :type, presence: true
  validates :value, presence: true
end