class User < ApplicationRecord
  has_many :assignments
  has_many :journals, through: :assignments
  has_many :challenges, through: :assignments
  has_many :team_users
  has_many :teams, through: :team_users

  validates :open_id, presence: true, uniqueness: true

  def total_days
    assignments.count
  end

  def max
    h = assignments.sort_by{|x| x.id}.map{|x| x.status }
    arr = []
    h.each_with_index do |x, i|
      if x
        arr << {index: i + 1, status: x}
      end
    end
    brr = []

    arr.each_with_index do |x, i|
      if i < arr.length - 1
        brr << (arr[i+1][:index] - x[:index])
      end
    end
    result = brr.map{|x| x== 1 ? 1 : '-'}.join().split('-').map{|x| x.length}.sort.last
    result.nil? ? 0 : result + 1
  end
end
