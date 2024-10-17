json.extract! notification, :id, :customer_id, :date, :description, :created_at, :updated_at
json.url notification_url(notification, format: :json)
