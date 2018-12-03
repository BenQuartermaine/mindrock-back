
json.journal do
  json.extract! @assignment, :id, :date
  json.extract! @journal, :id, :assignment_id, :content, :photo_tags
end

