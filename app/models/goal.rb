class Goal < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  has_one_attached :photo
end
