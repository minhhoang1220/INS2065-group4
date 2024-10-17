json.extract! movie_show, :id, :movie_id, :theatre_id, :date, :price, :created_at, :updated_at
json.url movie_show_url(movie_show, format: :json)
