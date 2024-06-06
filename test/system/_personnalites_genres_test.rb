require "application_system_test_case"

class PersonnalitesGenresTest < ApplicationSystemTestCase
  setup do
    @_personnalites_genre = _personnalites_genres(:one)
  end

  test "visiting the index" do
    visit _personnalites_genres_url
    assert_selector "h1", text: "Personnalites genres"
  end

  test "should create personnalites genre" do
    visit _personnalites_genres_url
    click_on "New personnalites genre"

    fill_in "Name", with: @_personnalites_genre.name
    click_on "Create Personnalites genre"

    assert_text "Personnalites genre was successfully created"
    click_on "Back"
  end

  test "should update Personnalites genre" do
    visit _personnalites_genre_url(@_personnalites_genre)
    click_on "Edit this personnalites genre", match: :first

    fill_in "Name", with: @_personnalites_genre.name
    click_on "Update Personnalites genre"

    assert_text "Personnalites genre was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnalites genre" do
    visit _personnalites_genre_url(@_personnalites_genre)
    click_on "Destroy this personnalites genre", match: :first

    assert_text "Personnalites genre was successfully destroyed"
  end
end
