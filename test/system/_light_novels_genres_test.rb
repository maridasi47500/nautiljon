require "application_system_test_case"

class LightNovelsGenresTest < ApplicationSystemTestCase
  setup do
    @_light_novels_genre = _light_novels_genres(:one)
  end

  test "visiting the index" do
    visit _light_novels_genres_url
    assert_selector "h1", text: "Light novels genres"
  end

  test "should create light novels genre" do
    visit _light_novels_genres_url
    click_on "New light novels genre"

    fill_in "Name", with: @_light_novels_genre.name
    click_on "Create Light novels genre"

    assert_text "Light novels genre was successfully created"
    click_on "Back"
  end

  test "should update Light novels genre" do
    visit _light_novels_genre_url(@_light_novels_genre)
    click_on "Edit this light novels genre", match: :first

    fill_in "Name", with: @_light_novels_genre.name
    click_on "Update Light novels genre"

    assert_text "Light novels genre was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels genre" do
    visit _light_novels_genre_url(@_light_novels_genre)
    click_on "Destroy this light novels genre", match: :first

    assert_text "Light novels genre was successfully destroyed"
  end
end
