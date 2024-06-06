require "application_system_test_case"

class JeuxVideosGenresTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_genre = _jeux_videos_genres(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_genres_url
    assert_selector "h1", text: "Jeux videos genres"
  end

  test "should create jeux videos genre" do
    visit _jeux_videos_genres_url
    click_on "New jeux videos genre"

    fill_in "Name", with: @_jeux_videos_genre.name
    click_on "Create Jeux videos genre"

    assert_text "Jeux videos genre was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos genre" do
    visit _jeux_videos_genre_url(@_jeux_videos_genre)
    click_on "Edit this jeux videos genre", match: :first

    fill_in "Name", with: @_jeux_videos_genre.name
    click_on "Update Jeux videos genre"

    assert_text "Jeux videos genre was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos genre" do
    visit _jeux_videos_genre_url(@_jeux_videos_genre)
    click_on "Destroy this jeux videos genre", match: :first

    assert_text "Jeux videos genre was successfully destroyed"
  end
end
