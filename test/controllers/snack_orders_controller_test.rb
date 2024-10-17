require "test_helper"

class SnackOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @snack_order = snack_orders(:one)
  end

  test "should get index" do
    get snack_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_snack_order_url
    assert_response :success
  end

  test "should create snack_order" do
    assert_difference("SnackOrder.count") do
      post snack_orders_url, params: { snack_order: { customer_id: @snack_order.customer_id, quantity: @snack_order.quantity, snack_id: @snack_order.snack_id } }
    end

    assert_redirected_to snack_order_url(SnackOrder.last)
  end

  test "should show snack_order" do
    get snack_order_url(@snack_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_snack_order_url(@snack_order)
    assert_response :success
  end

  test "should update snack_order" do
    patch snack_order_url(@snack_order), params: { snack_order: { customer_id: @snack_order.customer_id, quantity: @snack_order.quantity, snack_id: @snack_order.snack_id } }
    assert_redirected_to snack_order_url(@snack_order)
  end

  test "should destroy snack_order" do
    assert_difference("SnackOrder.count", -1) do
      delete snack_order_url(@snack_order)
    end

    assert_redirected_to snack_orders_url
  end
end
