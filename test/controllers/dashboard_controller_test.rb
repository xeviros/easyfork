require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get my_orders_requests" do
    get dashboard_my_orders_requests_url
    assert_response :success
  end

  test "should get my_orders" do
    get dashboard_my_orders_url
    assert_response :success
  end

end
