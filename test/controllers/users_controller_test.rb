require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get spotify" do
    get users_spotify_url
    assert_response :success
  end

  test "should get action" do
    get users_action_url
    assert_response :success
  end

end
