require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
  	@restaurant = FactoryGirl.create(:restaurant)
  end


  test "existance" do
  	assert @restaurant
  end

  test "availability check" do
    assert_equal true, @restaurant.available?(100, 9)
  end
  test "availability check 0" do
    assert_equal false, @restaurant.available?(0, 1)
  end
  test "availability check min" do
    assert_equal true, @restaurant.available?(1, 1)
  end


end
