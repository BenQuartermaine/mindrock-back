class Challenge < ApplicationRecord
  has_many :assignments

  belongs_to :category

  acts_as_taggable_on :challenge_tag

  validates :name, presence: true
  validates :description, presence: true
end
