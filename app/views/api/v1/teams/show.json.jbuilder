json.team do
  json.members @team.users do |u|
    json.extract! u, :id, :avatarUrl, :nickName
  end
end
