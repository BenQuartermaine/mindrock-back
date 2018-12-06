json.team do
  json.extract! @team, :leader
  json.members @team.users do |u|
    json.extract! u, :id, :avatarUrl, :nickName
  end
end
