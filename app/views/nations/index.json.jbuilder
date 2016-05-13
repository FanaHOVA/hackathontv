json.array!(@nations) do |nation|
  json.extract! nation, :id, :name
  json.url nation_url(nation, format: :json)
end
