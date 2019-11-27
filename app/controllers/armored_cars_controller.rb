class ArmoredCarsController < ApplicationController

  def index
    @armored_cars = ArmoredCar.all
  end

  def show
    @armored_car = ArmoredCar.find(params[:id])
  end

  def new
    @user = User.find(current_user.id)
    @armored_car = ArmoredCar.new
  end

  def create
    @user = User.find(current_user.id)
    @armored_car = ArmoredCar.new
    @armored_car.user = @user
    @armored_car.save

    # redirect_to garden_path(@garden)
    redirect_to @user
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
    redirect_to armored_car_path(@car.id)
  end

  def destroy
    @armored_car = ArmoredCar.find(params[:id])
    @armored_car.destroy

    redirect_to @armored_car.user
  end

  private

  def car_params
    params.require(:armored_car).permit(:model, :detailes, :price_cents)
  end
end
