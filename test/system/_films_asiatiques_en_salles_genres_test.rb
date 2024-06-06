require "application_system_test_case"

class FilmsAsiatiquesEnSallesGenresTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_en_salles_genre = _films_asiatiques_en_salles_genres(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_en_salles_genres_url
    assert_selector "h1", text: "Films asiatiques en salles genres"
  end

  test "should create films asiatiques en salles genre" do
    visit _films_asiatiques_en_salles_genres_url
    click_on "New films asiatiques en salles genre"

    fill_in "Name", with: @_films_asiatiques_en_salles_genre.name
    click_on "Create Films asiatiques en salles genre"

    assert_text "Films asiatiques en salles genre was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques en salles genre" do
    visit _films_asiatiques_en_salles_genre_url(@_films_asiatiques_en_salles_genre)
    click_on "Edit this films asiatiques en salles genre", match: :first

    fill_in "Name", with: @_films_asiatiques_en_salles_genre.name
    click_on "Update Films asiatiques en salles genre"

    assert_text "Films asiatiques en salles genre was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques en salles genre" do
    visit _films_asiatiques_en_salles_genre_url(@_films_asiatiques_en_salles_genre)
    click_on "Destroy this films asiatiques en salles genre", match: :first

    assert_text "Films asiatiques en salles genre was successfully destroyed"
  end
end
