class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    set_restaurant
    @phone = phone_number?
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save

    redirect_to restaurant_path(@restaurant)
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def phone_number?
    if @restaurant.phone_number
      return @restaurant.phone_number
    else
      return "The phone number of this restaurant has not been given"
    end
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
