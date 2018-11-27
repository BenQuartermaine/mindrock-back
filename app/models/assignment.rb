class Assignment < ApplicationRecord
  belongs_to :user
  belongs_to :challenge
  has_many :journals

  validates :date, presence: true
end
