class MenusController < ApplicationController

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    if session[:cart_id]
      @cart = ShoppingCart.find(session[:cart_id])
      @cart_nr = @cart.shopping_cart_items.count
    else
      @cart_nr = 0
    end
  end
end
