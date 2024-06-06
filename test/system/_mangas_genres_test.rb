require "application_system_test_case"

class MangasGenresTest < ApplicationSystemTestCase
  setup do
    @_mangas_genre = _mangas_genres(:one)
  end

  test "visiting the index" do
    visit _mangas_genres_url
    assert_selector "h1", text: "Mangas genres"
  end

  test "should create mangas genre" do
    visit _mangas_genres_url
    click_on "New mangas genre"

    fill_in "Name", with: @_mangas_genre.name
    click_on "Create Mangas genre"

    assert_text "Mangas genre was successfully created"
    click_on "Back"
  end

  test "should update Mangas genre" do
    visit _mangas_genre_url(@_mangas_genre)
    click_on "Edit this mangas genre", match: :first

    fill_in "Name", with: @_mangas_genre.name
    click_on "Update Mangas genre"

    assert_text "Mangas genre was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas genre" do
    visit _mangas_genre_url(@_mangas_genre)
    click_on "Destroy this mangas genre", match: :first

    assert_text "Mangas genre was successfully destroyed"
  end
end
