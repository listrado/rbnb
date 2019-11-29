class AddPositionToArmoredCars < ActiveRecord::Migration[5.2]
  def change
    add_column :armored_cars, :latitude, :float
    add_column :armored_cars, :longitude, :float
  end
end
