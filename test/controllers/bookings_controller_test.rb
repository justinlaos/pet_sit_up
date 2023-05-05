require "test_helper"

class BookingsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    get "/admins/sign_in"
    sign_in admins(:admin)
    post admin_session_url

    @booking = bookings(:one)
  end

  test "should get index" do
    get bookings_url
    assert_response :success
  end

  test "should get new" do
    get new_booking_url
    assert_response :success
  end

  test "should create booking" do
    assert_difference("Booking.count") do
      post bookings_url, params: { booking: { status: "confirmed", first_name: "justin", last_name: "laos", address: "123 main street", animal_name: "mila", animal_type: "dog", hours: 3, price: 40, service_date: "2023-05-24 00:00:00.000000000 +0000" } }
    end

    assert_redirected_to booking_url(Booking.last)
  end

  test "should show booking" do
    get booking_url(@booking)
    assert_response :success
  end

  test "should get edit" do
    get edit_booking_url(@booking)
    assert_response :success
  end

  test "should update booking" do
    patch booking_url(@booking), params: { booking: { status: "confirmed", first_name: "justin", last_name: "laos", address: "123 main street", animal_name: "mila", animal_type: "dog", hours: 3, price: 40, service_date: "2023-05-24 00:00:00.000000000 +0000" } }
    assert_redirected_to booking_url(@booking)
  end

  test "should destroy booking" do
    assert_difference("Booking.count", -1) do
      delete booking_url(@booking)
    end

    assert_redirected_to bookings_url
  end
end
