class Api::V1::ReviewsController < ApplicationController
  def index
    render json: Review.all
  end

  def show
    # @title = @review.title
    # @content = @review.content 
    # @date = @review.date
    # @authors = Authors.all.map{ |author| [author.name, author_id]}
  end


  def create
    # @review = Review.new(review_params)

    # respond_to do |format|
    #   if @review.save
    #     format.html { redirect_to @review, notice: 'Review was successfully created.' }
    #     format.json { render :show, status: :created, location: @review }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @review.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  def destroy
    # @review.destroy
    # respond_to do |format|
    #   format.html { redirect_to review_url, notice: 'Review was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
    # @review = Review.find(params[:id])
    # @review.destroy

    # render json: {},
    #   status: :ok 
  end

  def update
    # respond_to do |format|
    #   if @review.update(review_params)
    #     format.html { redirect_to @review, notice: 'Review was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @review }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @review.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  private
    def review_params
      params.require(:review).permit(:title, :content, :date, :author_id)
    end
end
