class Snack < ApplicationRecord
    has_many :snack_orders
    validates_presence_of :snack_name, :price
    validates_uniqueness_of :snack_name
    validates_numericality_of :price, greater_than_or_equal_to: 0
    
  end
  