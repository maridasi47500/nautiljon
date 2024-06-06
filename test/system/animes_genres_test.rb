require "application_system_test_case"

class AnimesGenresTest < ApplicationSystemTestCase
  setup do
    @animes_genre = animes_genres(:one)
  end

  test "visiting the index" do
    visit animes_genres_url
    assert_selector "h1", text: "Animes genres"
  end

  test "should create animes genre" do
    visit animes_genres_url
    click_on "New animes genre"

    fill_in "Name", with: @animes_genre.name
    click_on "Create Animes genre"

    assert_text "Animes genre was successfully created"
    click_on "Back"
  end

  test "should update Animes genre" do
    visit animes_genre_url(@animes_genre)
    click_on "Edit this animes genre", match: :first

    fill_in "Name", with: @animes_genre.name
    click_on "Update Animes genre"

    assert_text "Animes genre was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes genre" do
    visit animes_genre_url(@animes_genre)
    click_on "Destroy this animes genre", match: :first

    assert_text "Animes genre was successfully destroyed"
  end
end
