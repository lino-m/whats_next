class Goal < ApplicationRecord
  include PgSearch::Model
  belongs_to :user
  belongs_to :activity
  has_one_attached :photo
end
