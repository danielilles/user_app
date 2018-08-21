json.extract! email_address, :id, :user_name, :email, :created_at, :updated_at
json.url email_address_url(email_address, format: :json)
