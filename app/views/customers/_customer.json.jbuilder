json.extract! customer, :id, :customer_name, :username, :password, :email, :address, :phone, :created_at, :updated_at
json.url customer_url(customer, format: :json)
