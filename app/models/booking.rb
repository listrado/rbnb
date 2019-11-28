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
end
