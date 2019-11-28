# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating Users and ArmoredCars'

User.create(email: 'user1@gmail.com',
            password: '123456',
            name: 'Andre')

User.create(email: 'user2@gmail.com',
            password: '123456',
            name: 'Monster')

ArmoredCar.create(model: 'Tanque Argentino Mediano',
                  detailes: 'medium tank',
                  price_cents: 2_000,
                  user_id: 1)

ArmoredCar.create(model: 'EE-3 Jararaca',
                  detailes: ' Brazilian scout car ',
                  price_cents: 1_000,
                  user_id: 1)

ArmoredCar.create(model: 'EE-9 Cascavel',
                  detailes: ' a six-wheeled Brazilian armoured car developed primarily for reconnaissance',
                  price_cents: 2_000,
                  user_id: 1)

ArmoredCar.create(model: 'VBTP-MR Guarani',
                  detailes: 'Medium Wheeled Type',
                  price_cents: 2_000,
                  user_id: 1)

ArmoredCar.create(model: 'Batmobile',
                  detailes: "Andre's favorite",
                  price_cents: 9_000,
                  user_id: 1)

Booking.create(rent_price_cents: '9_000',
               starts_on: Time.now,
               ends_on: Time.now + 1,
               user_id: 2,
               armored_car_id: 5,
               address: '16 Villa Gaudelet, Paris')

Booking.create(rent_price_cents: '9_000_000',
               starts_on: Time.now,
               ends_on: Time.now + 2,
               user_id: 2,
               armored_car_id: 6,
               address: 'Christ the Redeemer, Rio de Janiero')

Booking.create(rent_price_cents: '9_000_000',
               starts_on: Time.now,
               ends_on: Time.now + 2,
               user_id: 6,
               armored_car_id: 6,
               address: '26 Ladiera de Gloria, Rio de Janiero')

Booking.create(rent_price_cents: '10_000',
               starts_on: Time.now,
               ends_on: Time.now + 2,
               user_id: 2,
               armored_car_id: 6,
               address: 'Christ the Redeemer, Rio de Janiero')


puts 'Seed complete'
