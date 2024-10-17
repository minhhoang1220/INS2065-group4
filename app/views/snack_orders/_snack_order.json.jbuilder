json.extract! snack_order, :id, :snack_id, :customer_id, :quantity, :created_at, :updated_at
json.url snack_order_url(snack_order, format: :json)
