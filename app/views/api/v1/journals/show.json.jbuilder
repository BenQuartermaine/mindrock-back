json.assignment do
  json.extract! @assignment, :id, :date, :journals
  # json.extract! @journal, :id, :assignment_id, :content, :photo_tags
end

