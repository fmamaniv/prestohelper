json.array!(@userfacebooks) do |userfacebook|
  json.extract! userfacebook, :id, :facebook_uid, :access_token, :faceboook_page
  json.url userfacebook_url(userfacebook, format: :json)
end
