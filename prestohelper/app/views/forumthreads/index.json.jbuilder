json.array!(@forumthreads) do |forumthread|
  json.extract! forumthread, :id, :title, :body, :post_private, :creation_date
  json.url forumthread_url(forumthread, format: :json)
end
