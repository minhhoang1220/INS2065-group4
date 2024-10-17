class MovieShow < ApplicationRecord
  belongs_to :movie
  belongs_to :theatre
  validates_presence_of :movie_id, :theatre_id, :date, :price
  validates_numericality_of :price
end
