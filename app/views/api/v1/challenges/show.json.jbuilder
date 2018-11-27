json.challenge do
  json.extract! @challenge, :id, :name, :description, :challenge_tag_list
end
