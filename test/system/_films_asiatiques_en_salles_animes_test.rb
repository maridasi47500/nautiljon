require "application_system_test_case"

class FilmsAsiatiquesEnSallesAnimesTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_en_salles_anime = _films_asiatiques_en_salles_animes(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_en_salles_animes_url
    assert_selector "h1", text: "Films asiatiques en salles animes"
  end

  test "should create films asiatiques en salles anime" do
    visit _films_asiatiques_en_salles_animes_url
    click_on "New films asiatiques en salles anime"

    fill_in "Name", with: @_films_asiatiques_en_salles_anime.name
    click_on "Create Films asiatiques en salles anime"

    assert_text "Films asiatiques en salles anime was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques en salles anime" do
    visit _films_asiatiques_en_salles_anime_url(@_films_asiatiques_en_salles_anime)
    click_on "Edit this films asiatiques en salles anime", match: :first

    fill_in "Name", with: @_films_asiatiques_en_salles_anime.name
    click_on "Update Films asiatiques en salles anime"

    assert_text "Films asiatiques en salles anime was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques en salles anime" do
    visit _films_asiatiques_en_salles_anime_url(@_films_asiatiques_en_salles_anime)
    click_on "Destroy this films asiatiques en salles anime", match: :first

    assert_text "Films asiatiques en salles anime was successfully destroyed"
  end
end
