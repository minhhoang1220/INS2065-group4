json.extract! booking, :id, :customer_id, :show_id, :seat_id, :booking_date, :created_at, :updated_at
json.url booking_url(booking, format: :json)
