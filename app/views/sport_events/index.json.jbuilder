json.array!(@sport_events) do |sport_event|
  json.extract! sport_event, :id, :name, :location, :sport, :time
  json.url sport_event_url(sport_event, format: :json)
end
