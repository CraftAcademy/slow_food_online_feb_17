class RatingsController < ApplicationController

  def update
    @rating = Rating.find_by(restaurant_id: params[:id])
    @rating.update_rating(params)
    @usr = Userrate.find_by(rating_id: @rating.id)
    @usr.update_columns(check: false)
    redirect_to  show_path(current_user.id)
  end
end
