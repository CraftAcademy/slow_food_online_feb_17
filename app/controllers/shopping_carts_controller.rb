class ShoppingCartsController < ApplicationController
  before_action :get_shopping_cart

  def complete
    @cart.update(paid: 'true')
    session.delete(:cart_id)
  end

  def show

  end

  def rate
    @rating = Rating.find_by(restaurant_id: params[:rest_id])
    if params[:rating]
      count = @rating.counter + 1
      if params[:rating][:rating].to_f > @rating.rating
        rat = (params[:rating][:rating].to_f / count.to_f ) + @rating.rating
      else
        rat = @rating.rating - (params[:rating][:rating].to_f / count.to_f )
      end
      @rating.update(rating: rat , counter: count.to_i)
    end
    @cartid = params[:cart_id]
    render :complete
  end

  private

  def get_shopping_cart
    if session[:cart_id]
      @cart = ShoppingCart.find(session[:cart_id])
    else
      @cart = ShoppingCart.find(params[:cart_id])
    end
    @rest = @cart.shopping_cart_items[0].item.menu.restaurant
    @rating = Rating.find_by(restaurant_id: @rest.id)
  end
end
