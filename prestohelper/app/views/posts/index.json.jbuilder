json.array!(@posts) do |post|
  json.extract! post, :id, :message, :creation_date
  json.url post_url(post, format: :json)
end
