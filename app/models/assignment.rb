class Assignment < ApplicationRecord
  belongs_to :user
  belongs_to :challenge
  has_many :journals

  validates :date, presence: true

  def journal_hash
    u = User.find(self.user_id)
    j = self.journals.first

    if j.nil?
      {
        assignment_id: self.id,
        avatarUrl: u.avatarUrl,
        content: "",
        status: self.status
      }
    else
      {
        assignment_id: self.id,
        avatarUrl: u.avatarUrl,
        content: j.content,
        status: self.status
      }
    end
  end
end
