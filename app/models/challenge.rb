class Challenge < ApplicationRecord
  has_many :assignments

  validates :name, presence: true
  validates :description, presence: true
end
