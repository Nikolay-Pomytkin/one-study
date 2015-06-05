json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :name, :school_id
  json.url teacher_url(teacher, format: :json)
end
