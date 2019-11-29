class UsersController < ApplicationController

  def show
    @bookings = current_user.bookings
    @cars = ArmoredCar.all
    @own_cars = @cars.select{ |car| car.user == current_user }
  end
end
