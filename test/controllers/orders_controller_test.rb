require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get order_history" do
    get orders_order_history_url
    assert_response :success
  end

end
