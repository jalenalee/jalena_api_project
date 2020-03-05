require 'test_helper'

class Api::V1::RestaurantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant = restaurants(:one)
  end

  test "should get index" do
    get api_v1_restaurants_path
    assert_response :success
  end

  test "should get show" do 
    get api_v1_restaurant_path(@restaurant)
    assert_response :success
  end 

  test "should get create" do 
    get api_v1_restaurants_path(@restaurant)
    assert_response :success
  end 

  test "should get destroy" do 
    get api_v1_restaurant_path(@restaurant)
    assert_response :success
  end 

  test "should get update" do 
    get api_v1_restaurant_path(@restaurant)
    assert_response :success
  end
end
