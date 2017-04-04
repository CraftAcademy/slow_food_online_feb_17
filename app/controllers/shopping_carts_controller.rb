class ShoppingCartsController < ApplicationController
  before_action :get_shopping_cart

  def show
    
  end

  private

  def get_shopping_cart
    @cart = ShoppingCart.find(session[:cart_id])
  end
end
