class ShoppingCartItemsController < ApplicationController
 before_action :get_shopping_cart

 def create
   dish = Dish.find(params[:dish_id])
   @cart.add(dish, dish.price)
   flash[:notice] = "#{dish.name} has been added to your order,"
   redirect_back(fallback_location: root_path)
 end

 private

 def get_shopping_cart
   if session[:cart_id]
     @cart = ShoppingCart.find(session[:cart_id])
   else
     @cart = ShoppingCart.create
   end
 end
end
