class Seating < ApplicationRecord
  belongs_to :screen
  has_many :bookings
end
