class Purchase < ActiveRecord::Base
  belongs_to :supplier
  monetize :total_cents
end
