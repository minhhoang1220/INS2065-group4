json.extract! movie, :id, :movie_title, :genre, :release_date, :director, :duration, :status, :image, :created_at, :updated_at
json.url movie_url(movie, format: :json)
