class AddImageToArmoredCars < ActiveRecord::Migration[5.2]
  def change
    add_column :armored_cars, :image, :string
  end
end
