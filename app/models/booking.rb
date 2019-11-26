class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :armored_car
  # fixing error
end
