require "application_system_test_case"

class FilmsAsiatiquesEnSallesActualitesTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_en_salles_actualite = _films_asiatiques_en_salles_actualites(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_en_salles_actualites_url
    assert_selector "h1", text: "Films asiatiques en salles actualites"
  end

  test "should create films asiatiques en salles actualite" do
    visit _films_asiatiques_en_salles_actualites_url
    click_on "New films asiatiques en salles actualite"

    fill_in "Name", with: @_films_asiatiques_en_salles_actualite.name
    click_on "Create Films asiatiques en salles actualite"

    assert_text "Films asiatiques en salles actualite was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques en salles actualite" do
    visit _films_asiatiques_en_salles_actualite_url(@_films_asiatiques_en_salles_actualite)
    click_on "Edit this films asiatiques en salles actualite", match: :first

    fill_in "Name", with: @_films_asiatiques_en_salles_actualite.name
    click_on "Update Films asiatiques en salles actualite"

    assert_text "Films asiatiques en salles actualite was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques en salles actualite" do
    visit _films_asiatiques_en_salles_actualite_url(@_films_asiatiques_en_salles_actualite)
    click_on "Destroy this films asiatiques en salles actualite", match: :first

    assert_text "Films asiatiques en salles actualite was successfully destroyed"
  end
end
