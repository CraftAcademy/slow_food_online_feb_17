class DishController < ApplicationController

  def show
    @dish = Dish.find(params[:id])
  end

  def new
    @menu = Menu.find(params[:menu_id])
    @dish = Dish.new(menu: @menu)
  end

  def create
    @menu = Menu.find(params[:menu_id])
    @dish = Dish.new(dish_params)
    if @dish.save
      flash[:notice] = "A new dish has been added to #{@menu.name} menu"
      redirect_to restaurant_menu_path(@menu.restaurant, @menu)
    else
      render 'new'
    end
  end

  def destroy
    @menu = Menu.find(params[:menu_id])
    @dish = Dish.find(params[:id])
    if @dish.destroy(dish_params)
      flash[:notice] = 'Are you sure you want to delete this dish?'
      flash[:notice] = "#{@dish.name} details successfully deleted"
        redirect_to restaurant_menu_path(@menu.restaurant, @menu)
      else
        render 'delete'
      end
  end

  private
  def dish_params
    params.require(:dish).permit(:name,
                                 :price,
                                 :description,
                                 :category,
                                 :menu_id)
  end
end
