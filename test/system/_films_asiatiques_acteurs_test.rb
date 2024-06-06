require "application_system_test_case"

class FilmsAsiatiquesActeursTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_acteur = _films_asiatiques_acteurs(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_acteurs_url
    assert_selector "h1", text: "Films asiatiques acteurs"
  end

  test "should create films asiatiques acteur" do
    visit _films_asiatiques_acteurs_url
    click_on "New films asiatiques acteur"

    fill_in "Name", with: @_films_asiatiques_acteur.name
    click_on "Create Films asiatiques acteur"

    assert_text "Films asiatiques acteur was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques acteur" do
    visit _films_asiatiques_acteur_url(@_films_asiatiques_acteur)
    click_on "Edit this films asiatiques acteur", match: :first

    fill_in "Name", with: @_films_asiatiques_acteur.name
    click_on "Update Films asiatiques acteur"

    assert_text "Films asiatiques acteur was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques acteur" do
    visit _films_asiatiques_acteur_url(@_films_asiatiques_acteur)
    click_on "Destroy this films asiatiques acteur", match: :first

    assert_text "Films asiatiques acteur was successfully destroyed"
  end
end
