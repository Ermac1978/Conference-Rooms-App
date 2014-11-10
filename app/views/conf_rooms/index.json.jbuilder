json.array!(@conf_rooms) do |conf_room|
  json.extract! conf_room, :id, :name, :location, :sq_feet, :description
  json.url conf_room_url(conf_room, format: :json)
end
