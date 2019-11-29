class RemovePositionFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :latitude
    remove_column :bookings, :longitude
    remove_column :bookings, :address
  end
end
