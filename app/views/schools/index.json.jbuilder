json.array!(@schools) do |school|
  json.extract! school, :id, :name, :info, :city, :zipcode, :state
  json.url school_url(school, format: :json)
end
