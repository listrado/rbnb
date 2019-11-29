Booking.destroy_all
ArmoredCar.destroy_all
User.destroy_all

puts 'Creating Users'

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

puts 'Creating ArmoredCars'

ArmoredCar.create!(
  model: 'Tanque Argentino Mediano',
  detailes: 'medium tank',
  price_cents: 2_000,
  user: first_user,
  address: '16 Villa Gaudelet, Paris',
  image: 'https://c7.alamy.com/compde/dc72d4/gepanzerte-deutschen-wagen-form-zweiter-weltkrieg-bekampfen-zug-dc72d4.jpg',
).update!(
  latitude: 48.8649224,
  longitude: 2.3800903
)

ArmoredCar.create!(
  model: 'EE-3 Jararaca',
  detailes: ' Brazilian scout car ',
  price_cents: 1_000,
  user: first_user,
  address: '16 Villa Gaudelet, Paris',
  image: 'https://c7.alamy.com/compde/dc72d4/gepanzerte-deutschen-wagen-form-zweiter-weltkrieg-bekampfen-zug-dc72d4.jpg',
).update!(
  latitude: 52.36054,
  longitude:  -3.71196
)

ArmoredCar.create!(
  model: 'EE-9 Cascavel',
  detailes: ' a six-wheeled Brazilian armoured car developed primarily for reconnaissance',
  price_cents: 2_000,
  user: first_user,
  address: 'Parque Nacional da Tijuca - Alto da Boa Vista, Rio de Janeiro - RJ',
  image: 'https://media.defense.gov/2018/May/14/2001916792/-1/-1/0/171129-M-OI329-0119.JPG',
).update!(
  latitude: -70.70676,
  longitude: 145.76581
)

ArmoredCar.create!(
  model: 'VBTP-MR Guarani',
  detailes: 'Medium Wheeled Type',
  price_cents: 2_000,
  user: first_user,
  address: '11 Broadway, Financial District, New York, NY 10004, United States',
  image: 'https://media.defense.gov/2018/May/14/2001916767/-1/-1/0/180218-Z-NU746-0140.JPG',
).update!(
  latitude: -22.9204468,
  longitude: -43.1827152
)

ArmoredCar.create!(
  model: 'Batmobile',
  detailes: "Andre's favorite",
  price_cents: 9_000,
  user: first_user,
  address: 'Centro, Rio de Janeiro - State of Rio de Janeiro',
).update!(
  latitude: 36.35229,
  longitude: -89.98083
)

puts 'Creating Bookings'

Booking.create!(
  rent_price_cents: '9_000',
  starts_on: Time.now,
  ends_on: Time.now + 1,
  user: second_user,
  armored_car: ArmoredCar.fourth,
)

Booking.create!(
  rent_price_cents: '9_000_000',
  starts_on: Time.now,
  ends_on: Time.now + 2,
  user: second_user,
  armored_car: ArmoredCar.fifth,
)

Booking.create!(
  rent_price_cents: '9_000_000',
  starts_on: Time.now,
  ends_on: Time.now + 2,
  user: first_user,
  armored_car: ArmoredCar.fifth,
)

Booking.create!(
  rent_price_cents: '10_000',
  starts_on: Time.now,
  ends_on: Time.now + 2,
  user: second_user,
  armored_car: ArmoredCar.fifth
)

Booking.create!(
  rent_price_cents: '10_000',
  starts_on: Time.now,
  ends_on: Time.now + 2,
  user: second_user,
  armored_car: ArmoredCar.first
)

Booking.create!(
  rent_price_cents: '10_000',
  starts_on: Time.now,
  ends_on: Time.now + 2,
  user: second_user,
  armored_car: ArmoredCar.second
)

Booking.create!(
  rent_price_cents: '10_000',
  starts_on: Time.now,
  ends_on: Time.now + 2,
  user: second_user,
  armored_car: ArmoredCar.third
)

# Booking.create!(
#   rent_price_cents: '10_000',
#   starts_on: Time.now,
#   ends_on: Time.now + 2,
#   user: second_user,
#   armored_car: ArmoredCar.sixth
# )

# Booking.create!(
#   rent_price_cents: '10_000',
#   starts_on: Time.now,
#   ends_on: Time.now + 2,
#   user: second_user,
#   armored_car: ArmoredCar.seventh
# )


puts 'Seed complete'
