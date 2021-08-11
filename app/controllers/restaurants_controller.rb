class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]
 # get /restaurants
  def index
    @restaurants = Restaurant.all
  end
 # get /restaurants/:id
  def show
  end

  # /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was successfully created.'
    else
      render :new
    end
  end


  private

    # Use callbacks to share common setup or constraints between actions.
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
