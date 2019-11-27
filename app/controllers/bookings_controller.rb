class BookingsController < ApplicationController
  def new
    @armored_car = ArmoredCar.find(params[:armored_car_id])
    @booking = Booking.new
  end

  def create
    @armored_car = ArmoredCar.find(params[:armored_car_id])
    @booking = Booking.new(booking_params)
    @booking.rent_price_cents = @armored_car.price_cents
    @booking.user = current_user
    @booking.armored_car = @armored_car
    if @booking.save
      redirect_to current_user
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_on, :ends_on)
  end
end
