json.user do
  json.extract! @user, :id, :open_id, :nick_name, :avatar_url, :gender
  json.challenges @user.challenges do |challenge|
    json.extract! challenge, :name, :description, :challenge_tag
  end
end
