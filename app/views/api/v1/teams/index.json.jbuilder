json.teams do
  json.team @teams do |t|
    json.extract! t, :id, :leader, :challenge_id, :team_users
  end
end
