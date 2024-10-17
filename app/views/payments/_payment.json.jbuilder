json.extract! payment, :id, :booking_id, :snack_order_id, :payment_date, :total_amount, :created_at, :updated_at
json.url payment_url(payment, format: :json)
