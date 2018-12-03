class Challenge < ApplicationRecord
  has_many :assignments

  belongs_to :category

  acts_as_taggable_on :challenge_tag

  validates :name, presence: true
  validates :description, presence: true

  def team_for(user)
    teams = Team.where(challenge_id: self.id)
    teams.each do |t|
      teams.pop(t) unless t.users.include?(user)
    end

    if teams.length > 0
      return teams
    else
      return false
    end
  end
end
