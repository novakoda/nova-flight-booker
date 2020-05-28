json.extract! flight, :id, :origin_id, :destination_id, :depart_time, :duration, :created_at, :updated_at
json.url flight_url(flight, format: :json)
