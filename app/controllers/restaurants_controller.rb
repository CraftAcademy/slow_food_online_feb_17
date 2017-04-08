class RestaurantsController < ApplicationController

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new restaurant_params
    Rating.create(restaurant: @restaurant , rating: 3.0 , counter: 30)
    if @restaurant.save
      flash[:notice] = "Restaurant successfully created"
      render :show
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :street, :zip_code, :city, :food_style, :description)
  end
end
