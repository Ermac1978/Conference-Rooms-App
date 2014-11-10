json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :index
  json.url reservation_url(reservation, format: :json)
end
