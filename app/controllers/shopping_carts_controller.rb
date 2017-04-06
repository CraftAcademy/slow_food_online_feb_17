class ShoppingCartsController < ApplicationController
  before_action :get_shopping_cart

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

  def get_shopping_cart
    @cart = ShoppingCart.find(session[:cart_id])
  end
end
