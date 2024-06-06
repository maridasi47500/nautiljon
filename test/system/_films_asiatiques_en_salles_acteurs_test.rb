require "application_system_test_case"

class FilmsAsiatiquesEnSallesActeursTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_en_salles_acteur = _films_asiatiques_en_salles_acteurs(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_en_salles_acteurs_url
    assert_selector "h1", text: "Films asiatiques en salles acteurs"
  end

  test "should create films asiatiques en salles acteur" do
    visit _films_asiatiques_en_salles_acteurs_url
    click_on "New films asiatiques en salles acteur"

    fill_in "Name", with: @_films_asiatiques_en_salles_acteur.name
    click_on "Create Films asiatiques en salles acteur"

    assert_text "Films asiatiques en salles acteur was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques en salles acteur" do
    visit _films_asiatiques_en_salles_acteur_url(@_films_asiatiques_en_salles_acteur)
    click_on "Edit this films asiatiques en salles acteur", match: :first

    fill_in "Name", with: @_films_asiatiques_en_salles_acteur.name
    click_on "Update Films asiatiques en salles acteur"

    assert_text "Films asiatiques en salles acteur was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques en salles acteur" do
    visit _films_asiatiques_en_salles_acteur_url(@_films_asiatiques_en_salles_acteur)
    click_on "Destroy this films asiatiques en salles acteur", match: :first

    assert_text "Films asiatiques en salles acteur was successfully destroyed"
  end
end
