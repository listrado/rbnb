class AddAddresToArmoredCars < ActiveRecord::Migration[5.2]
  def change
    add_column :armored_cars, :address, :string
  end
end
