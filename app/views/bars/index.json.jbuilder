json.array!(@bars) do |bar|
  json.extract! bar, :id, :address, :name, :phone, :email
  json.url bar_url(bar, format: :json)
end
