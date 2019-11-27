class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @armored_car = ArmoredCar.find(params[:armored_car_id])
    @booking = Booking.new
  end

  def delete
    @booking = Booking.find(params[:id])
    @booking.delete
  end

  def create
    @armored_car = ArmoredCar.find(params[:armored_car_id])
    @booking = Booking.new
    @booking.armored_car = @armored_car

    if @booking.save
      redirect_to @armored_car.user
    else
      redirect_to '/'
    end
  end
end
