class ShoppingCartsController < ApplicationController
  before_action :get_shopping_cart, :get_rating

  def complete
    @cart.update(paid: 'true')
    session.delete(:cart_id)
    render :complete
  end

  def create
    charge = StripePayment.perform_transaction(params, @cart)
    if charge.class == Stripe::Charge
      redirect_to complete_path, notice: 'Transaction completed'
    else
      flash[:notice] = charge
      redirect_to cart_path(@cart)
    end
  end

  def show
  end

  private

  def get_rating
    @rating = Rating.find_by(restaurant_id: @cart.shopping_cart_items[0].item.menu.restaurant.id)
  end
end
