class DishesController < ApplicationController
  before_action :admin_user,   only: [:create, :edit, :update, :destroy]

  def create
    @dish = current_user.dishes.build(dish_params)
    if @dish.save
      flash[:success] = "Dish created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def edit
    @dish = Dish.find(params[:id])
  end
  
  def update
    @dish = Dish.find(params[:id])
    if @dish.update_attributes(dish_params)
      flash[:success] = "Dish updated"
      redirect_to @dish
    else
      render 'edit'
    end
  end

  def destroy
    Dish.find(params[:id]).destroy
    flash[:success] = "Dish deleted"
    #redirect_to Our_Menu
  end
  
  private
  def dish_params
    params.require(:dish).permit(:name, :category, :price)
  end
end
  