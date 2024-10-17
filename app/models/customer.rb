class Customer < ApplicationRecord
    has_many :feedbacks
    has_many :bookings
    has_many :notifications
    has_many :snack_orders
  end
  