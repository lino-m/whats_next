class Activity < ApplicationRecord
  include PgSearch::Model
  multisearchable against: [:name, :category, :location]
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
