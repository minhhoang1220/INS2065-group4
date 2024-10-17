class Booking < ApplicationRecord
  belongs_to :customer
  belongs_to :show
  belongs_to :seat
end
