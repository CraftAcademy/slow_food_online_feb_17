class ApplicationController < ActionController::Base
 protect_from_forgery with: :exception
 before_action :configure_permitted_parameters, if: :devise_controller?
 before_action :get_shopping_cart

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def get_shopping_cart
    if session[:cart_id]
      @cart = ShoppingCart.find(session[:cart_id])
    elsif params[:cart_id]
      @cart = ShoppingCart.find(params[:cart_id])
    end
  end
end
