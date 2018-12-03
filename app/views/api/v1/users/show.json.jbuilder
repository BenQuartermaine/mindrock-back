json.user do
  json.extract! @user, :id, :open_id, :nickName, :avatarUrl, :gender

  json.challenges @user.challenges.uniq.reverse do |challenge|
    if challenge.team_for(@user)
      json.team do
        json.extract! challenge, :id, :name, :description, :challenge_tag_list
        json.assignments challenge.assignments.sort do |a|
          json.extract! a, :id, :date, :status, :user_id
        end
        team = challenge.team_for(@user)[0]
        json.teammates team.users do |u|
          json.extract! u, :id, :open_id, :nickName, :avatarUrl, :gender
        end
      end
    else
      json.dashboard do
        json.extract! challenge, :id, :name, :description, :challenge_tag_list
        json.assignments challenge.assignments.sort do |a|
          json.extract! a, :id, :date, :status
        end
      end
    end
  end
end
