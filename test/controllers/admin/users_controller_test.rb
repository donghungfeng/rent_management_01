require "test_helper"

class Admin::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get account" do
    get admin_users_account_url
    assert_response :success
  end
end
