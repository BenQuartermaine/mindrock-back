json.user do
  json.extract! @user, :id, :open_id, :nickName, :avatarUrl, :gender

  json.challenges @user.challenges.uniq.reverse do |challenge|
    if challenge.team_for(@user)
      json.team do
        json.extract! challenge, :id, :name, :description, :challenge_tag_list
        json.assignments challenge.assignments.sort do |a|
          json.extract! a, :id, :date, :status
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
