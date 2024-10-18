class Customer < ApplicationRecord
    has_many :feedbacks
    has_many :bookings
    has_many :notifications
    has_many :snack_orders
    validates_presence_of :customer_name, :username, :password, :email, :address, :phone
    validates_uniqueness_of :username, :email
    validates_numericality_of :phone
    
    VALID_EMAIL_REGEX = /\A[^@\s]+@[^@\s]+\z/
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX, message: "is not a valid email" }
  end
  