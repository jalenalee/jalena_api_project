require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  def setup
    @review = Review.new(title: "Example Review", content: "Example Content ", date: DateTime.now(), author_id: '2')
  end

  test "name should be present" do
    @review.title = "     "
    assert_not @review.valid?
  end 

  test "content should be present" do
    @review.content = "     "
    assert_not @review.valid?
  end 

  test "author id should be present" do
    @review.author_id = "     "
    assert_not @review.valid?
  end 


end
