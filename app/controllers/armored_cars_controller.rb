class ArmoredCarsController < ApplicationController

  def index
    @cars = ArmoredCar.all
  end

  def show
    @car = ArmoredCar.find(params[:id])
  end

  def new
    @user = User.find(current_user.id)
    @car = ArmoredCar.new
  end

  def create
    @user = User.find(current_user.id)
    @car = ArmoredCar.new(car_params)
    @car.address = 'Christ Redeemer - Rio de Janeiro' unless @car.geocode
    @car.user = @user
    @car.save
    # redirect_to garden_path(@garden)
    redirect_to @car
  end

  def show
    @car = ArmoredCar.find(params[:id])
  end

  def edit
    @car = ArmoredCar.find(params[:id])
  end

  def update
    @car = ArmoredCar.find(params[:id])
    @car.update(car_params)
    redirect_to @car
  end

  def destroy
    @car = ArmoredCar.find(params[:id])
    @car.destroy

    redirect_to armored_cars_path
  end

  private

  def car_params
    params.require(:armored_car).permit(:model, :address, :detailes, :price_cents, :image)
  end
end
