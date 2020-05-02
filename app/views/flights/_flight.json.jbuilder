json.extract! flight, :id, :from_airport_id, :to_airport_id, :depart_time, :duration, :created_at, :updated_at
json.url flight_url(flight, format: :json)
