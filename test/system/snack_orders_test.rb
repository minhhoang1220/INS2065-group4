require "application_system_test_case"

class SnackOrdersTest < ApplicationSystemTestCase
  setup do
    @snack_order = snack_orders(:one)
  end

  test "visiting the index" do
    visit snack_orders_url
    assert_selector "h1", text: "Snack orders"
  end

  test "should create snack order" do
    visit snack_orders_url
    click_on "New snack order"

    fill_in "Customer", with: @snack_order.customer_id
    fill_in "Quantity", with: @snack_order.quantity
    fill_in "Snack", with: @snack_order.snack_id
    click_on "Create Snack order"

    assert_text "Snack order was successfully created"
    click_on "Back"
  end

  test "should update Snack order" do
    visit snack_order_url(@snack_order)
    click_on "Edit this snack order", match: :first

    fill_in "Customer", with: @snack_order.customer_id
    fill_in "Quantity", with: @snack_order.quantity
    fill_in "Snack", with: @snack_order.snack_id
    click_on "Update Snack order"

    assert_text "Snack order was successfully updated"
    click_on "Back"
  end

  test "should destroy Snack order" do
    visit snack_order_url(@snack_order)
    click_on "Destroy this snack order", match: :first

    assert_text "Snack order was successfully destroyed"
  end
end
