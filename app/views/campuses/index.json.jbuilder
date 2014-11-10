json.array!(@campuses) do |campus|
  json.extract! campus, :id, :index
  json.url campus_url(campus, format: :json)
end
