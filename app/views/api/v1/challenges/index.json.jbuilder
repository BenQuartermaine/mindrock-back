json.challenges do
  json.array! @challenges do |challenge|
    json.extract! challenge, :id, :name, :description
  end
end
