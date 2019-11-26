class ArmoredCarsController < ApplicationController
  def edit
    @car = ArmoredCar.find(params[:id])
  end

  def update
    @car = ArmoredCar.find(params[:id])
    @car.update(car_params)
    redirect_to '/'
  end

  private

  def car_params
    params.require(:armored_car).permit(:model, :detailes, :price_cents)
  end
end
