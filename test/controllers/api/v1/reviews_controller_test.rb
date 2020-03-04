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

  test "should get create" do 
    get api_v1_reviews_path(@review)
    assert_response :success
  end 

  test "should get destroy" do 
    get api_v1_review_path(@review)
    assert_response :success
  end 

  test "should get update" do 
    get api_v1_review_path(@review)
    assert_response :success
  end 

end
