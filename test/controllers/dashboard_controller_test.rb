require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get goals" do
    get dashboard_goals_url
    assert_response :success
  end

  test "should get achievements" do
    get dashboard_achievements_url
    assert_response :success
  end

end
