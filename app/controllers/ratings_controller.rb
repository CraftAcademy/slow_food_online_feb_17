class RatingsController < ApplicationController
  before_action :get_shopping_cart

  def rate
    @rating = Rating.find_by(restaurant_id: params[:id])
    if params[:rating]
      count = @rating.counter + 1
      if params[:rating][:rating].to_f > @rating.rating
        rat = (params[:rating][:rating].to_f / count.to_f ) + @rating.rating
      else
        rat = @rating.rating - (params[:rating][:rating].to_f / count.to_f )
      end
      @rating.update(rating: rat , counter: count.to_i)
    end
    render "shopping_carts/complete"
  end
end
