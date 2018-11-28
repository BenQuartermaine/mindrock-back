json.challenges do
  json.array! @challenges do |challenge|
    json.extract! challenge, :id, :name, :description, :challenge_tag_list
  end
end
