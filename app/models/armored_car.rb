class ArmoredCar < ApplicationRecord
  belongs_to :user
  # fixing error
  has_many :bookings
end
