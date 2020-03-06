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

  test "should create restaurant" do 
    # get api_v1_restaurants_path(@restaurant)
    assert_difference('Restaurant.count', 1) do
      post api_v1_restaurants_path,
        params: {
          restaurant: {
            name: @restaurant.name,
            specialty: @restaurant.specialty,
            owner_id: @restaurant.owner_id
          }
        }
    end
    assert_response :success
  end 

  test "should destroy restaurant" do 
    assert_difference('Restaurant.count', -1) do
    delete api_v1_restaurant_path(@restaurant)
    end 
    assert_response :success
  end 

  test "should update restaurant" do 
    patch api_v1_restaurant_path(@restaurant),
    params: {
      restaurant: {
        name: @restaurant.name,
        specialty: @restaurant.specialty,
        owner_id: @restaurant.owner_id
      }
    }
    assert_response :success
  end 

end
