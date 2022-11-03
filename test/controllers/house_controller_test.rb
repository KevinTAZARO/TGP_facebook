require "test_helper"

class HouseControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get house_home_url
    assert_response :success
  end

  test "should get contact" do
    get house_contact_url
    assert_response :success
  end

  test "should get team" do
    get house_team_url
    assert_response :success
  end
end
