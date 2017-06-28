json.extract! thing, :id, :frequency_in_days, :title, :notes, :duration_in_minutes, :location, :created_at, :updated_at
json.url thing_url(thing, format: :json)
