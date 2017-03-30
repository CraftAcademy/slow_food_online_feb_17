class MenusController < ApplicationController

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    @dishes = @restaurant.menu.dishes
  end

end
