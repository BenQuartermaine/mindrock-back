json.categories do
  json.array! @categories do |category|
    json.extract! category, :name
    json.challenges category.challenges do |challenge|
      json.extract! challenge, :id, :name, :description, :challenge_tag_list
    end
  end
end
