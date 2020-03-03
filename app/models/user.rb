class User < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_username_and_first_name_and_last_name,
    against: [ :username, :first_name, :last_name ],
    using: {
      tsearch: { prefix: true }
    }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo
end
