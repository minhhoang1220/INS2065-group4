require "application_system_test_case"

class SeatingsTest < ApplicationSystemTestCase
  setup do
    @seating = seatings(:one)
  end

  test "visiting the index" do
    visit seatings_url
    assert_selector "h1", text: "Seatings"
  end

  test "should create seating" do
    visit seatings_url
    click_on "New seating"

    fill_in "Screen", with: @seating.screen_id
    fill_in "Seat code", with: @seating.seat_code
    click_on "Create Seating"

    assert_text "Seating was successfully created"
    click_on "Back"
  end

  test "should update Seating" do
    visit seating_url(@seating)
    click_on "Edit this seating", match: :first

    fill_in "Screen", with: @seating.screen_id
    fill_in "Seat code", with: @seating.seat_code
    click_on "Update Seating"

    assert_text "Seating was successfully updated"
    click_on "Back"
  end

  test "should destroy Seating" do
    visit seating_url(@seating)
    click_on "Destroy this seating", match: :first

    assert_text "Seating was successfully destroyed"
  end
end
