require 'test_helper'

class Api::V1::ReviewsControllerTest < ActionDispatch::IntegrationTest
  # before test runs, the instance variable review to populate it (using reviews.yml)
  setup do
    @review = reviews(:one)
  end
  
  test "should get index" do
    get api_v1_reviews_path
    assert_response :success
  end

  test "should get show" do 
    get api_v1_review_path(@review)
    assert_response :success
  end 

  test "should create review" do 
    # get api_v1_reviews_path(@review)
    # assert_response :success

    assert_difference('Review.count', 1) do
      post api_v1_reviews_path,
        params: {
          review: {
            title: @review.title,
            content: @review.content,
            date: @review.date,
            author_id: @review.author_id
          }
        }
      end 
      assert_response :success
  end 

  test "should destroy review" do 
    assert_difference('Review.count', -1) do
    delete api_v1_review_path(@review)
    end 
    assert_response :success
  end 

  test "should update review" do 
    patch api_v1_review_path(@review),
    params: {
      review: {
        title: @review.title,
        content: @review.content,
        date: @review.date,
        author_id: @review.author_id
      }
    }
    assert_response :success
  end 

end
