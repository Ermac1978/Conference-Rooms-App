json.array!(@features) do |feature|
  json.extract! feature, :id, :index
  json.url feature_url(feature, format: :json)
end
