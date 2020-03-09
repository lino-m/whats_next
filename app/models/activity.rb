class Activity < ApplicationRecord
  include PgSearch::Model
  multisearchable against: [:name, :category, :location]

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  has_many :goals
end
