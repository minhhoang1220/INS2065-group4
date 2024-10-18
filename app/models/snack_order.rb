class SnackOrder < ApplicationRecord
  belongs_to :snack
  belongs_to :customer
  validates_presence_of :snack_id, :customer_id, :quantity
  validates_numericality_of :quantity
  validates_uniqueness_of :snack_id
end
