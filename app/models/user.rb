class User < ApplicationRecord
  has_many :assignments
  has_many :journals, through: :assignments
  has_many :challenges, through: :assignments

  validates :open_id, presence: true, uniqueness: true

end
