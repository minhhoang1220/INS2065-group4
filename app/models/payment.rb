class Payment < ApplicationRecord
  belongs_to :booking
  belongs_to :snack_order
end
