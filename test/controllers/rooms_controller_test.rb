require 'test_helper'

class RoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get room_district" do
    get rooms_room_district_url
    assert_response :success
  end

end
