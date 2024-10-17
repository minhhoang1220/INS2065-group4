require "application_system_test_case"

class TheatresTest < ApplicationSystemTestCase
  setup do
    @theatre = theatres(:one)
  end

  test "visiting the index" do
    visit theatres_url
    assert_selector "h1", text: "Theatres"
  end

  test "should create theatre" do
    visit theatres_url
    click_on "New theatre"

    fill_in "Location", with: @theatre.location
    fill_in "Theatre name", with: @theatre.theatre_name
    click_on "Create Theatre"

    assert_text "Theatre was successfully created"
    click_on "Back"
  end

  test "should update Theatre" do
    visit theatre_url(@theatre)
    click_on "Edit this theatre", match: :first

    fill_in "Location", with: @theatre.location
    fill_in "Theatre name", with: @theatre.theatre_name
    click_on "Update Theatre"

    assert_text "Theatre was successfully updated"
    click_on "Back"
  end

  test "should destroy Theatre" do
    visit theatre_url(@theatre)
    click_on "Destroy this theatre", match: :first

    assert_text "Theatre was successfully destroyed"
  end
end
