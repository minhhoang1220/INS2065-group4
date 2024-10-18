class MovieShow < ApplicationRecord
  belongs_to :movie
  belongs_to :theatre
  validates_presence_of :movie_id, :theatre_id, :date, :price
  validates_numericality_of :price, greater_than_or_equal_to: 0
  validates_uniqueness_of :show_time, scope: [:movie_id, :theatre_id]
end
