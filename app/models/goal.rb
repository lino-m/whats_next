class Goal < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  has_many :milestones, dependent: :destroy
end
