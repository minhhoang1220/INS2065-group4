class Notification < ApplicationRecord
  belongs_to :customer
  validates_presence_of :customer_id, :date, :description
end
