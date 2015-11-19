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
end
