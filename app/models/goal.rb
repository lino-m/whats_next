class Goal < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  include PgSearch::Model
end
