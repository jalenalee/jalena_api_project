class Api::V1::RestaurantsController < ApplicationController
  def index
    render json: Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    render json: @restaurant
  end

  def create 
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save!
      render json: @restaurant,
        status: 200
    else
      render json: @restaurant.errors,
        status: 422
    end
  end 

  def update 
    @restaurant = Restaurant.find(params[:id])
      if @restaurant.update!(restaurant_params)
        render json: @restaurant,
          status: 200
      else
        render json: @restaurant.error, 
          status: 422
      end
  end 

  def destroy 
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy!

    render json: {
      'message': 'Restaurant was successfully destroyed'
    }, status: :ok 
  end 

  private
    def restaurant_params
      params.require(:restaurant).permit(:name, :specialty, :owner_id)
    end
  
end
