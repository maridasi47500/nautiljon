require "application_system_test_case"

class FilmsAsiatiquesGenresTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_genre = _films_asiatiques_genres(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_genres_url
    assert_selector "h1", text: "Films asiatiques genres"
  end

  test "should create films asiatiques genre" do
    visit _films_asiatiques_genres_url
    click_on "New films asiatiques genre"

    fill_in "Name", with: @_films_asiatiques_genre.name
    click_on "Create Films asiatiques genre"

    assert_text "Films asiatiques genre was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques genre" do
    visit _films_asiatiques_genre_url(@_films_asiatiques_genre)
    click_on "Edit this films asiatiques genre", match: :first

    fill_in "Name", with: @_films_asiatiques_genre.name
    click_on "Update Films asiatiques genre"

    assert_text "Films asiatiques genre was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques genre" do
    visit _films_asiatiques_genre_url(@_films_asiatiques_genre)
    click_on "Destroy this films asiatiques genre", match: :first

    assert_text "Films asiatiques genre was successfully destroyed"
  end
end
