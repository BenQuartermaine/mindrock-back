json.team do
  json.extract! @team.users, :id, :avatarUrl, :nickName
end
