require 'test_helper'

class RestaurantReviewTest < ActiveSupport::TestCase
  def setup
    @restaurant = Restaurant.new(title: "Example Review", content: "Example Content ", date: DateTime.now(), author_id: '2')
  end

  test "address should be present" do
    @review.address = "     "
    assert_not @review.valid?
  end 
end
