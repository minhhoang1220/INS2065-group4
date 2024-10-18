class Screen < ApplicationRecord
  has_many :seats
  belongs_to :theatre
  validates_presence_of :screen_name, :seat_capacity
  validates_uniqueness_of :screen_name
  validates_numericality_of :seat_capacity, greater_than: 0
end
