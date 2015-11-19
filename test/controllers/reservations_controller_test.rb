require 'test_helper'

class ReservationsControllerTest < ActionController::TestCase
  setup do
    @reservation = FactoryGirl.create(:reservation)
  end
  test "party size" do
    assert_equals 2, Reservation.first.party_size
  end
end
