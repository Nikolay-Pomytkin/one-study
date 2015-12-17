json.array!(@guides) do |guide|
  json.extract! guide, :id, :title, :body, :user_id, :course_id
  json.url guide_url(guide, format: :json)
end
