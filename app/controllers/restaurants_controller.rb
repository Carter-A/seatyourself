class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    if current_user
      @reservation = @restaurant.reservations.build
    end
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_url
    else
      render :new
    end
  end
  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    #add redirect here
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :location, :cuisine, :photo_url)
  end
end
