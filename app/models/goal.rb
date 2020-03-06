class Goal < ApplicationRecord
  include PgSearch::Model
  multisearchable against: [:title, :category, :motivation]
    # associated
    #   {
    #   category: 'A',
    #   title: 'B',
    #   motivation: 'C'
    # }


  belongs_to :user
  belongs_to :activity

  has_many :milestones, dependent: :destroy
  has_one_attached :photo
  accepts_nested_attributes_for :milestones, reject_if: :all_blank, allow_destroy: true
end
