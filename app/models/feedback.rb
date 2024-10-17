class Feedback < ApplicationRecord
  belongs_to :customer
  validates_presence_of :customer_id, :date, :message
end
