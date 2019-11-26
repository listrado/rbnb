class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :rent_price_cents
      t.date :starts_on
      t.date :ends_on
      t.references :user, foreign_key: true
      t.references :armored_car, foreign_key: true

      t.timestamps
    end
  end
end
