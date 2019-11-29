class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :armored_car
  has_many   :reviews

  def days_of_rent
    (ends_on - starts_on).to_i
  end

  def total_price
    rent_price_cents * days_of_rent
  end

  def address
    armored_car.address
  end

  def latitude
    armored_car.latitude
  end

  def longitude
    armored_car.longitude
  end
end
