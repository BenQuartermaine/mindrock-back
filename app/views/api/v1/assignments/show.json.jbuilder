json.extract! @challenge,name, :address, :image, :description
json.reviews @challenge.assignments do |assignment|
  json.extract! assignment, :id, :status, :user_id, :challenge_id
  json.date assignment.created_at.strftime("%m/%d/%y")
end
