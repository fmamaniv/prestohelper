json.array!(@helpers) do |helper|
  json.extract! helper, :id, :creation_date, :information
  json.url helper_url(helper, format: :json)
end
