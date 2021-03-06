class BookingsController < ApplicationController
  def index
    # @bookings = Booking.geocoded #returns bookings with coordinates
    @bookings = Booking.all
    @car = ArmoredCar.find(params[:armored_car_id])
    @selected_bookings = @bookings.select { |booking| booking.armored_car == @car }

    @markers = @selected_bookings.map do |booking|
      {
        lat: booking.latitude,
        lng: booking.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { booking: booking })
      }
    end
  end

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

  def destroy
    @booking = Booking.find(params[:armored_car_id])
    @booking.destroy
    redirect_to current_user
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_on, :ends_on)
  end
end
