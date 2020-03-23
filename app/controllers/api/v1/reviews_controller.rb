class Api::V1::ReviewsController < ApplicationController
  def index
    @review = Review.includes(:restaurants, :author).all 
    render json: @review

  end

  def show
    @review = Review.includes(:restaurants).all
    render json: @review
  end

  def create
    @review = Review.new(review_params)

    if @review.save!
      render json: @review,
        status: 200
    else
      render json: @review.errors,
        status: 422
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy!

    render json: {
      'message': 'Review was successfully destroyed'
    }, status: :ok 
  end

  def update
      @review = Review.find(params[:id])
      if @review.update!(review_params)
        render json: @review,
          status: 200
      else
        render json: @review.error, 
          status: 422
      end
  end

  private
    def review_params
      params.require(:review).permit(:title, :content, :date, :author_id)
    end
end
