require "application_system_test_case"

class FilmsAsiatiquesEnSallesPaysOriginesTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_en_salles_pays_origine = _films_asiatiques_en_salles_pays_origines(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_en_salles_pays_origines_url
    assert_selector "h1", text: "Films asiatiques en salles pays origines"
  end

  test "should create films asiatiques en salles pays origine" do
    visit _films_asiatiques_en_salles_pays_origines_url
    click_on "New films asiatiques en salles pays origine"

    fill_in "Name", with: @_films_asiatiques_en_salles_pays_origine.name
    click_on "Create Films asiatiques en salles pays origine"

    assert_text "Films asiatiques en salles pays origine was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques en salles pays origine" do
    visit _films_asiatiques_en_salles_pays_origine_url(@_films_asiatiques_en_salles_pays_origine)
    click_on "Edit this films asiatiques en salles pays origine", match: :first

    fill_in "Name", with: @_films_asiatiques_en_salles_pays_origine.name
    click_on "Update Films asiatiques en salles pays origine"

    assert_text "Films asiatiques en salles pays origine was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques en salles pays origine" do
    visit _films_asiatiques_en_salles_pays_origine_url(@_films_asiatiques_en_salles_pays_origine)
    click_on "Destroy this films asiatiques en salles pays origine", match: :first

    assert_text "Films asiatiques en salles pays origine was successfully destroyed"
  end
end
