class User < ApplicationRecord
  has_many :assignments
  has_many :journals, through: :assignments
  has_many :challenges, through: :assignments
  has_many :team_users
  has_many :teams, through: :team_users

  validates :open_id, presence: true, uniqueness: true

end
