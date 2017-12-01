require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get inventory" do
    get pages_inventory_url
    assert_response :success
  end

  test "should get orders" do
    get pages_orders_url
    assert_response :success
  end

  test "should get reports" do
    get pages_reports_url
    assert_response :success
  end

end
