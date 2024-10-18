class Feedback < ApplicationRecord
  belongs_to :customer
  validates_presence_of :customer_id, :date, :message
  validates_uniqueness_of :message, scope: [:customer_id, :snack_id]
end
