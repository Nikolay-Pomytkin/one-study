json.array!(@courses) do |course|
  json.extract! course, :id, :name, :description, :teacher_id
  json.url course_url(course, format: :json)
end
