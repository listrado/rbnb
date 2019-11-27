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
    @car.user = @user
    @car.save

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
    redirect_to car_path(@car.id)
  end

  def destroy
    @car = ArmoredCar.find(params[:id])
    @car.destroy

    redirect_to @car.user
  end

  private

  def car_params
    params.require(:armored_car).permit(:model, :detailes, :price_cents)
  end
end
