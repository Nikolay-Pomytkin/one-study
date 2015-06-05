json.array!(@courses) do |course|
  json.extract! course, :id, :name, :teacher_id
  json.url course_url(course, format: :json)
end
