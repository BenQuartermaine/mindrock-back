json.assignments do
   json.array! @assignments do |assignment|
    json.extract! assignment, :id, :date, :status, :journals
  end
end
