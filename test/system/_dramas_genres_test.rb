require "application_system_test_case"

class DramasGenresTest < ApplicationSystemTestCase
  setup do
    @_dramas_genre = _dramas_genres(:one)
  end

  test "visiting the index" do
    visit _dramas_genres_url
    assert_selector "h1", text: "Dramas genres"
  end

  test "should create dramas genre" do
    visit _dramas_genres_url
    click_on "New dramas genre"

    fill_in "Name", with: @_dramas_genre.name
    click_on "Create Dramas genre"

    assert_text "Dramas genre was successfully created"
    click_on "Back"
  end

  test "should update Dramas genre" do
    visit _dramas_genre_url(@_dramas_genre)
    click_on "Edit this dramas genre", match: :first

    fill_in "Name", with: @_dramas_genre.name
    click_on "Update Dramas genre"

    assert_text "Dramas genre was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas genre" do
    visit _dramas_genre_url(@_dramas_genre)
    click_on "Destroy this dramas genre", match: :first

    assert_text "Dramas genre was successfully destroyed"
  end
end
