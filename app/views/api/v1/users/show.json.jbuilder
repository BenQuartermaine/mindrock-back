json.user do
  json.extract! @user, :id, :open_id, :nick_name, :avatar_url, :gender

  json.challenges @user.challenges.uniq do |challenge|
    json.extract! challenge, :id, :name, :description, :challenge_tag_list
    json.assignments challenge.assignments.sort do |a|
      json.extract! a, :id, :date, :status
    end
  end
end
