class Api::V1::RestaurantsController < ApplicationController
  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def index
    render json: Restaurant.all
  end

  def create 
  end 

  def destory 
  end 

  
end
