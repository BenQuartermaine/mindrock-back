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
        avatarUrl: u.avatarUrl,
        content: "",
        status: self.status
      }
    else
      {
        avatarUrl: u.avatarUrl,
        content: j.content,
        status: self.status
      }
    end
  end
end
