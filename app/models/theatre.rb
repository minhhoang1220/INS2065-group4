class Theatre < ApplicationRecord
    has_many :screens
    has_many :movie_shows
    has_many :movies, through: :movie_shows
    validates_presence_of :theatre_name, :locationgia
  end
  