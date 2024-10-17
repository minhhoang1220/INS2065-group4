class SnackOrder < ApplicationRecord
  belongs_to :snack
  belongs_to :customer
end
