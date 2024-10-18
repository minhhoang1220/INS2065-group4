class Payment < ApplicationRecord
  belongs_to :booking
  belongs_to :snack_order
  validates_presence_of :booking_id, :snack_order_id, :payment_date, :total_amount
  validates_numericality_of :total_amount, greater_than_or_equal_to: 0
end
