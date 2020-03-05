require 'test_helper'

class RestaurantReviewTest < ActiveSupport::TestCase
  def setup
    @restaurant = Restaurant.new(name: "Example Name", specialty: "Example Specialty ", owner_id: '2')
  end

  test "name should be present" do
    @restaurant.name = "     "
    assert_not @restaurant.valid?
  end 

  test "specialty should be present" do 
    @restaurant.specialty = "     "
    assert_not @restaurant.valid?
  end 

  test "owner id should be present" do 
    @restaurant.owner_id = "     "
    assert_not @restaurant.valid?
  end 

  test "owner id should be unique" do 
    duplicate_restaurant = @restaurant.dup
    duplicate_restaurant.owner_id = @restaurant.owner_id
    @restaurant.save
    assert_not duplicate_restaurant.valid?
  end 
end
