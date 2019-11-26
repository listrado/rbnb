class ArmoredCarsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @armored_car = ArmoredCar.new
  end

  def create
    @user = User.find(params[:user_id])
    @armored_car = ArmoredCar.new
    @armored_car.user = @user
    @armored_car.save

    # redirect_to garden_path(@garden)
    redirect_to @user
  end

  def edit
    @car = ArmoredCar.find(params[:id])
  end

  def update
    @car = ArmoredCar.find(params[:id])
    @car.update(car_params)
    redirect_to '/'
  end

  def destroy
    @armored_car = Armored_car.find(params[:id])
    @armored_car.destroy

    redirect_to @armored_car.user
  end

  end

  private

  def car_params
    params.require(:armored_car).permit(:model, :detailes, :price_cents)
  end
end
