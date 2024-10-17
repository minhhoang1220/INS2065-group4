class Booking < ApplicationRecord
  belongs_to :customer
  belongs_to :show
  belongs_to :seat
  validates_presence_of :customer_id, :show_id, :seat_id, :booking_date
  validates_numericality_of :customer_id, :show_id, :seat_id
end
