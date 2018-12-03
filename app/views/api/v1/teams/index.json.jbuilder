json.teams do
  json.team @teams do |t|
    json.extract! t, :id, :leader, :challenge_id
  end
end
