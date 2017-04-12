class ShoppingCartsController < ApplicationController
  before_action :get_shopping_cart, :get_rating

  def complete
    @cart.update(paid: 'true')
    session.delete(:cart_id)
  end

  def show

  end

  private

  def get_rating
    @rating = Rating.find_by(restaurant_id: @cart.shopping_cart_items[0].item.menu.restaurant.id)
  end
end
