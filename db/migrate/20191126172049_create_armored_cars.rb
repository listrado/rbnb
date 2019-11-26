class CreateArmoredCars < ActiveRecord::Migration[5.2]
  def change
    create_table :armored_cars do |t|
      t.string :model
      t.string :detailes
      t.integer :price_cents
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
