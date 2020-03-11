class Goal < ApplicationRecord
  include PgSearch::Model
  pg_search_scope(
    :search_query,
    against: [:title, :motivation, :category],
    associated_against:{
      activity: [:location, :name]
    },
    using: {
      tsearch: { prefix: true }
    }
  )
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
  accepts_nested_attributes_for :milestones #, reject_if: :all_blank, allow_destroy: true
end
