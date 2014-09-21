json.array!(@users) do |user|
  json.extract! user, :id, :username, :email, :password, :birthdate, :last_login, :last_update, :gender, :latitude, :longitude
  json.url user_url(user, format: :json)
end
