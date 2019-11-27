class BookingsController < ApplicationController
  def new
    @armored_car = ArmoredCar.find(params[:armored_car_id])
    @booking = Booking.new
  end

  def create
    @armored_car = ArmoredCar.find(params[:armored_car_id])
    @booking = Booking.new(booking_params)
    @days = (@booking.ends_on - @booking.starts_on).to_i
    @total = @days * @armored_car.price_cents.to_i
    @booking.rent_price_cents = @total
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
