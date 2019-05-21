require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get start_at:datetime" do
    get bookings_start_at:datetime_url
    assert_response :success
  end

  test "should get end_at:datetime" do
    get bookings_end_at:datetime_url
    assert_response :success
  end

  test "should get user:references" do
    get bookings_user:references_url
    assert_response :success
  end

  test "should get wagoner:references" do
    get bookings_wagoner:references_url
    assert_response :success
  end

end
