class Screen < ApplicationRecord
  has_many :seats
  belongs_to :theatre
end
