json.extract! feedback, :id, :customer_id, :date, :message, :created_at, :updated_at
json.url feedback_url(feedback, format: :json)
