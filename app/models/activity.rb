class Activity < ApplicationRecord
  include PgSearch::Model
  multisearchable against: [:name, :category, :location]
end
