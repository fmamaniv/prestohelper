json.array!(@userreviews) do |userreview|
  json.extract! userreview, :id, :rating
  json.url userreview_url(userreview, format: :json)
end
