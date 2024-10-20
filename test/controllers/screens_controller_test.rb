require "test_helper"

class ScreensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @screen = screens(:one)
  end

  test "should get index" do
    get screens_url
    assert_response :success
  end

  test "should get new" do
    get new_screen_url
    assert_response :success
  end

  test "should create screen" do
    assert_difference("Screen.count") do
      post screens_url, params: { screen: { screen_name: @screen.screen_name, seat_capacity: @screen.seat_capacity, theatre_id: @screen.theatre_id } }
    end

    assert_redirected_to screen_url(Screen.last)
  end

  test "should show screen" do
    get screen_url(@screen)
    assert_response :success
  end

  test "should get edit" do
    get edit_screen_url(@screen)
    assert_response :success
  end

  test "should update screen" do
    patch screen_url(@screen), params: { screen: { screen_name: @screen.screen_name, seat_capacity: @screen.seat_capacity, theatre_id: @screen.theatre_id } }
    assert_redirected_to screen_url(@screen)
  end

  test "should destroy screen" do
    assert_difference("Screen.count", -1) do
      delete screen_url(@screen)
    end

    assert_redirected_to screens_url
  end
end
