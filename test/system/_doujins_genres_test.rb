require "application_system_test_case"

class DoujinsGenresTest < ApplicationSystemTestCase
  setup do
    @_doujins_genre = _doujins_genres(:one)
  end

  test "visiting the index" do
    visit _doujins_genres_url
    assert_selector "h1", text: "Doujins genres"
  end

  test "should create doujins genre" do
    visit _doujins_genres_url
    click_on "New doujins genre"

    fill_in "Name", with: @_doujins_genre.name
    click_on "Create Doujins genre"

    assert_text "Doujins genre was successfully created"
    click_on "Back"
  end

  test "should update Doujins genre" do
    visit _doujins_genre_url(@_doujins_genre)
    click_on "Edit this doujins genre", match: :first

    fill_in "Name", with: @_doujins_genre.name
    click_on "Update Doujins genre"

    assert_text "Doujins genre was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujins genre" do
    visit _doujins_genre_url(@_doujins_genre)
    click_on "Destroy this doujins genre", match: :first

    assert_text "Doujins genre was successfully destroyed"
  end
end
