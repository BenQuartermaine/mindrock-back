json.extract! @assignment, :id, :user_id, :challenge_id, :date, :status
  json.journal @assignment.journal do
    json.extract! journal, :id, :content, :photo_tag_list
end

