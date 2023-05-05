require "test_helper"

class BookingTest < ActiveSupport::TestCase
  test "test price engine" do

    booking = Booking.create({ status: "confirmed", first_name: "justin", last_name: "laos", address: "123 main street", animal_name: "mila", animal_type: "dog", hours: 3, service_date: "2023-05-24 00:00:00.000000000 +0000" })

    assert booking.price == 50
  end
end
