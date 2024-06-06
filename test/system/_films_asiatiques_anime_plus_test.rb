require "application_system_test_case"

class FilmsAsiatiquesAnimePlusTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_anime_plu = _films_asiatiques_anime_plus(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_anime_plus_url
    assert_selector "h1", text: "Films asiatiques anime plus"
  end

  test "should create films asiatiques anime plu" do
    visit _films_asiatiques_anime_plus_url
    click_on "New films asiatiques anime plu"

    fill_in "Name", with: @_films_asiatiques_anime_plu.name
    click_on "Create Films asiatiques anime plu"

    assert_text "Films asiatiques anime plu was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques anime plu" do
    visit _films_asiatiques_anime_plu_url(@_films_asiatiques_anime_plu)
    click_on "Edit this films asiatiques anime plu", match: :first

    fill_in "Name", with: @_films_asiatiques_anime_plu.name
    click_on "Update Films asiatiques anime plu"

    assert_text "Films asiatiques anime plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques anime plu" do
    visit _films_asiatiques_anime_plu_url(@_films_asiatiques_anime_plu)
    click_on "Destroy this films asiatiques anime plu", match: :first

    assert_text "Films asiatiques anime plu was successfully destroyed"
  end
end
