json.array!(@clients) do |client|
  json.extract! client, :id, :creation_date
  json.url client_url(client, format: :json)
end
