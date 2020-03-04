class Milestone < ApplicationRecord
  belongs_to :goal
  monetize :price_cents
end
