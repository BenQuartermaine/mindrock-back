class Challenge < ApplicationRecord
  has_many :assignments

  belongs_to :category

  acts_as_taggable_on :challenge_tag

  validates :name, presence: true
  validates :description, presence: true

  def team_for(user)
    teams = Team.where(challenge_id: self.id).select{|t| t.users.include?(user)}
    # teams.each do |t|
    #   teams.delete(t) unless t.users.include?(user)
    # end

    if teams.length > 0
      return teams
    else
      return false
    end
  end

  def team_hash(team)
    assignments = self.assignments.select { |a| team.users.include?(a.user) }
    assignments = assignments.group_by { |a| a.date }
    assignments.each { |k, v| v.map! { |a| a.journal_hash } }
    assignments.sort
  end
end
