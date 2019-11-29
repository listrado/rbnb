Booking.destroy_all
ArmoredCar.destroy_all
User.destroy_all

puts 'Creating Users and ArmoredCars'

first_user = User.create!(
  email: 'user1@gmail.com',
  password: '123456',
  name: 'Andre'
)

second_user = User.create!(
  email: 'user2@gmail.com',
  password: '123456',
  name: 'Monster'
)

ArmoredCar.create!(
  model: 'Tanque Argentino Mediano',
  detailes: 'medium tank',
  price_cents: 2_000,
  user: first_user
)

ArmoredCar.create!(
  model: 'EE-3 Jararaca',
  detailes: ' Brazilian scout car ',
  price_cents: 1_000,
  user: first_user
)

ArmoredCar.create!(
  model: 'EE-9 Cascavel',
  detailes: ' a six-wheeled Brazilian armoured car developed primarily for reconnaissance',
  price_cents: 2_000,
  user: first_user
)

ArmoredCar.create!(
  model: 'VBTP-MR Guarani',
  detailes: 'Medium Wheeled Type',
  price_cents: 2_000,
  user: first_user
)

ArmoredCar.create!(
  model: 'Batmobile',
  detailes: "Andre's favorite",
  price_cents: 9_000,
  user: first_user
)

Booking.create!(
  rent_price_cents: '9_000',
  starts_on: Time.now,
  ends_on: Time.now + 1,
  user: second_user,
  armored_car: ArmoredCar.fourth,
  address: '16 Villa Gaudelet, Paris'
).update!(
  latitude: 48.8649224,
  longitude: 2.3800903
)

Booking.create!(
  rent_price_cents: '9_000_000',
  starts_on: Time.now,
  ends_on: Time.now + 2,
  user: second_user,
  armored_car: ArmoredCar.fifth,
  address: 'Christ the Redeemer, Rio de Janeiro'
).update!(
  lat: -22.9519173,
  lon: -43.210495
)

Booking.create!(
  rent_price_cents: '9_000_000',
  starts_on: Time.now,
  ends_on: Time.now + 2,
  user: first_user,
  armored_car: ArmoredCar.fifth,
  address: '26 Ladiera de Gloria, Rio de Janeiro'
).update!(
  latitude: 48.8649224,
  longitude: 2.3800903
)

Booking.create!(
  rent_price_cents: '10_000',
  starts_on: Time.now,
  ends_on: Time.now + 2,
  user: second_user,
  armored_car: ArmoredCar.fifth,
  address: 'Christ the Redeemer, Rio de Janeiro'
).update!(
  latitude: 48.8649224,
  longitude: 2.3800903
)

puts 'Seed complete'
