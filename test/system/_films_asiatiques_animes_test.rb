require "application_system_test_case"

class FilmsAsiatiquesAnimesTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_anime = _films_asiatiques_animes(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_animes_url
    assert_selector "h1", text: "Films asiatiques animes"
  end

  test "should create films asiatiques anime" do
    visit _films_asiatiques_animes_url
    click_on "New films asiatiques anime"

    fill_in "Name", with: @_films_asiatiques_anime.name
    click_on "Create Films asiatiques anime"

    assert_text "Films asiatiques anime was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques anime" do
    visit _films_asiatiques_anime_url(@_films_asiatiques_anime)
    click_on "Edit this films asiatiques anime", match: :first

    fill_in "Name", with: @_films_asiatiques_anime.name
    click_on "Update Films asiatiques anime"

    assert_text "Films asiatiques anime was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques anime" do
    visit _films_asiatiques_anime_url(@_films_asiatiques_anime)
    click_on "Destroy this films asiatiques anime", match: :first

    assert_text "Films asiatiques anime was successfully destroyed"
  end
end
