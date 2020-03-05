class Goal < ApplicationRecord
  include PgSearch::Model
  multisearchable against: [:title, :category, :motivation]
    #   {
    #   category: 'A',
    #   title: 'B',
    #   motivation: 'C'
    # }


  belongs_to :user
  belongs_to :activity

  has_many :milestones, dependent: :destroy
  has_one_attached :photo
  accepts_nested_attributes_for :milestones # to nest in forms change made by Lino
end
