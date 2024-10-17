class Movie < ApplicationRecord
    has_many :movie_shows
    has_many :theatres, through: :movie_shows
    validates_presence_of :movie_title, :genre, :release_date, :director, :duration, :status
    validates_numericality_of :duration
  end
  