require "application_system_test_case"

class FilmsAsiatiquesEnSallesActualiteMinisTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_en_salles_actualite_mini = _films_asiatiques_en_salles_actualite_minis(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_en_salles_actualite_minis_url
    assert_selector "h1", text: "Films asiatiques en salles actualite minis"
  end

  test "should create films asiatiques en salles actualite mini" do
    visit _films_asiatiques_en_salles_actualite_minis_url
    click_on "New films asiatiques en salles actualite mini"

    fill_in "Name", with: @_films_asiatiques_en_salles_actualite_mini.name
    click_on "Create Films asiatiques en salles actualite mini"

    assert_text "Films asiatiques en salles actualite mini was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques en salles actualite mini" do
    visit _films_asiatiques_en_salles_actualite_mini_url(@_films_asiatiques_en_salles_actualite_mini)
    click_on "Edit this films asiatiques en salles actualite mini", match: :first

    fill_in "Name", with: @_films_asiatiques_en_salles_actualite_mini.name
    click_on "Update Films asiatiques en salles actualite mini"

    assert_text "Films asiatiques en salles actualite mini was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques en salles actualite mini" do
    visit _films_asiatiques_en_salles_actualite_mini_url(@_films_asiatiques_en_salles_actualite_mini)
    click_on "Destroy this films asiatiques en salles actualite mini", match: :first

    assert_text "Films asiatiques en salles actualite mini was successfully destroyed"
  end
end
