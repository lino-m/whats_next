class Goal < ApplicationRecord
  include PgSearch::Model
  multisearchable against: [:title, :category, :motivation]
  pg_search_scope :search_by_title_and_category_and_motivation,
    against: [:title]
    {
      category: 'A',
      title: 'B',
      motivation: 'C'
    }
  #     associated_against: {
  #      activity: [:name ]
  #    },
  #   using: {
  #     tsearch: { prefix: true }
  #   }

  # pg_search_scope :global_search,
  #   against:: {
  #     category: 'A',
  #     location: 'B',
  #     title: 'C',
  #     motivation: 'D'
  #   },
  #   associated against: {
  #     user: [ :username, :first_name, :last_name ]
  #   },
  #   associated against: {
  #     activity: [ :location, :name ]
  #   },
  #   using: {
  #     tsearch: { prefix: true }
  #   }

  belongs_to :user
  belongs_to :activity

  has_many :milestones, dependent: :destroy
  has_one_attached :photo
  accepts_nested_attributes_for :milestones # to nest in forms change made by Lino
end
