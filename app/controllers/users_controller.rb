class UsersController < ApplicationController

  def show
  	@bookings = Booking.all
  end
end
