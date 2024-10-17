class Snack < ApplicationRecord
    has_many :snack_orders
    validates_presence_of :snack_name, :price
    validates_numericality_of :price
  end
  