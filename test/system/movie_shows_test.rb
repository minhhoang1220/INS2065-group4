require "application_system_test_case"

class MovieShowsTest < ApplicationSystemTestCase
  setup do
    @movie_show = movie_shows(:one)
  end

  test "visiting the index" do
    visit movie_shows_url
    assert_selector "h1", text: "Movie shows"
  end

  test "should create movie show" do
    visit movie_shows_url
    click_on "New movie show"

    fill_in "Date", with: @movie_show.date
    fill_in "Movie", with: @movie_show.movie_id
    fill_in "Price", with: @movie_show.price
    fill_in "Theatre", with: @movie_show.theatre_id
    click_on "Create Movie show"

    assert_text "Movie show was successfully created"
    click_on "Back"
  end

  test "should update Movie show" do
    visit movie_show_url(@movie_show)
    click_on "Edit this movie show", match: :first

    fill_in "Date", with: @movie_show.date
    fill_in "Movie", with: @movie_show.movie_id
    fill_in "Price", with: @movie_show.price
    fill_in "Theatre", with: @movie_show.theatre_id
    click_on "Update Movie show"

    assert_text "Movie show was successfully updated"
    click_on "Back"
  end

  test "should destroy Movie show" do
    visit movie_show_url(@movie_show)
    click_on "Destroy this movie show", match: :first

    assert_text "Movie show was successfully destroyed"
  end
end
