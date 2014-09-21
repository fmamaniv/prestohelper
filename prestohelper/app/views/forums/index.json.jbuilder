json.array!(@forums) do |forum|
  json.extract! forum, :id, :colaborator_status, :stars, :reviews
  json.url forum_url(forum, format: :json)
end
