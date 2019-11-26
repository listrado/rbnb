class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :armored_car
end
