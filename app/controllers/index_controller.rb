class IndexController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def select_category
    @restaurants = Restaurant.where(food_style: params[:post][:category])
    render 'index'
  end
end
