class Api::V1::ReviewsController < ApplicationController
  def create
  end

  def show
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    render json: {}, 
    status: :ok
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      render json: @review,
      status: :ok 
    begin
      render json: @review.errors, 
      status: :unprocessable_entity 
    rescue => exception
      
    else
      
    ensure
      
    end
  end

  def index
    render json: Review.all
  end
end
