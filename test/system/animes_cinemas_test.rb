require "application_system_test_case"

class AnimesCinemasTest < ApplicationSystemTestCase
  setup do
    @animes_cinema = animes_cinemas(:one)
  end

  test "visiting the index" do
    visit animes_cinemas_url
    assert_selector "h1", text: "Animes cinemas"
  end

  test "should create animes cinema" do
    visit animes_cinemas_url
    click_on "New animes cinema"

    fill_in "Name", with: @animes_cinema.name
    click_on "Create Animes cinema"

    assert_text "Animes cinema was successfully created"
    click_on "Back"
  end

  test "should update Animes cinema" do
    visit animes_cinema_url(@animes_cinema)
    click_on "Edit this animes cinema", match: :first

    fill_in "Name", with: @animes_cinema.name
    click_on "Update Animes cinema"

    assert_text "Animes cinema was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes cinema" do
    visit animes_cinema_url(@animes_cinema)
    click_on "Destroy this animes cinema", match: :first

    assert_text "Animes cinema was successfully destroyed"
  end
end
