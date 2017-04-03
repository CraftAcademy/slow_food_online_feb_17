class MenusController < ApplicationController

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    @cart_nr = ShoppingCart.count
  end
end
