require "application_system_test_case"

class FilmsAsiatiquesCinemasTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_cinema = _films_asiatiques_cinemas(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_cinemas_url
    assert_selector "h1", text: "Films asiatiques cinemas"
  end

  test "should create films asiatiques cinema" do
    visit _films_asiatiques_cinemas_url
    click_on "New films asiatiques cinema"

    fill_in "Name", with: @_films_asiatiques_cinema.name
    click_on "Create Films asiatiques cinema"

    assert_text "Films asiatiques cinema was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques cinema" do
    visit _films_asiatiques_cinema_url(@_films_asiatiques_cinema)
    click_on "Edit this films asiatiques cinema", match: :first

    fill_in "Name", with: @_films_asiatiques_cinema.name
    click_on "Update Films asiatiques cinema"

    assert_text "Films asiatiques cinema was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques cinema" do
    visit _films_asiatiques_cinema_url(@_films_asiatiques_cinema)
    click_on "Destroy this films asiatiques cinema", match: :first

    assert_text "Films asiatiques cinema was successfully destroyed"
  end
end
