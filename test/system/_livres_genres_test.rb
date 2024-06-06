require "application_system_test_case"

class LivresGenresTest < ApplicationSystemTestCase
  setup do
    @_livres_genre = _livres_genres(:one)
  end

  test "visiting the index" do
    visit _livres_genres_url
    assert_selector "h1", text: "Livres genres"
  end

  test "should create livres genre" do
    visit _livres_genres_url
    click_on "New livres genre"

    fill_in "Name", with: @_livres_genre.name
    click_on "Create Livres genre"

    assert_text "Livres genre was successfully created"
    click_on "Back"
  end

  test "should update Livres genre" do
    visit _livres_genre_url(@_livres_genre)
    click_on "Edit this livres genre", match: :first

    fill_in "Name", with: @_livres_genre.name
    click_on "Update Livres genre"

    assert_text "Livres genre was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres genre" do
    visit _livres_genre_url(@_livres_genre)
    click_on "Destroy this livres genre", match: :first

    assert_text "Livres genre was successfully destroyed"
  end
end
