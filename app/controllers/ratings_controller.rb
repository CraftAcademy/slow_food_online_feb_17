class RatingsController < ApplicationController
  before_action :get_shopping_cart

  def update
    @rating = Rating.find_by(restaurant_id: params[:id])
    @rating.update_rating(params)
    render "shopping_carts/complete"
  end
end
