class ShoppingCartsController < ApplicationController
  before_action :get_shopping_cart, :get_rating

  def complete
    @cart.update(paid: 'true', user_id: current_user.id)
    if Userrate.find_by(user_id: current_user.id , rating_id: @cart.shopping_cart_items[0].item.menu.restaurant.rating.id , check: true) == nil
      @usr = Userrate.new(check: true ,user_id: current_user.id,rating_id: @cart.shopping_cart_items[0].item.menu.restaurant.rating.id)
      @usr.save
    end
    if @cart.paid = 'true'
      session.delete(:cart_id)
      render :complete
    end
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
