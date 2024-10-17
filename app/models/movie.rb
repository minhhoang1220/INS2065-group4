class Movie < ApplicationRecord
    has_many :movie_shows
    has_many :theatres, through: :movie_shows
  end
  