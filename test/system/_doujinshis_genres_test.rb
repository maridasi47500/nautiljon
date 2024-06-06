require "application_system_test_case"

class DoujinshisGenresTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_genre = _doujinshis_genres(:one)
  end

  test "visiting the index" do
    visit _doujinshis_genres_url
    assert_selector "h1", text: "Doujinshis genres"
  end

  test "should create doujinshis genre" do
    visit _doujinshis_genres_url
    click_on "New doujinshis genre"

    fill_in "Name", with: @_doujinshis_genre.name
    click_on "Create Doujinshis genre"

    assert_text "Doujinshis genre was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis genre" do
    visit _doujinshis_genre_url(@_doujinshis_genre)
    click_on "Edit this doujinshis genre", match: :first

    fill_in "Name", with: @_doujinshis_genre.name
    click_on "Update Doujinshis genre"

    assert_text "Doujinshis genre was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis genre" do
    visit _doujinshis_genre_url(@_doujinshis_genre)
    click_on "Destroy this doujinshis genre", match: :first

    assert_text "Doujinshis genre was successfully destroyed"
  end
end
