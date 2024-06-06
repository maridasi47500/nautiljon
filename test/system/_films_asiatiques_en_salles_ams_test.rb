require "application_system_test_case"

class FilmsAsiatiquesEnSallesAmsTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_en_salles_am = _films_asiatiques_en_salles_ams(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_en_salles_ams_url
    assert_selector "h1", text: "Films asiatiques en salles ams"
  end

  test "should create films asiatiques en salles am" do
    visit _films_asiatiques_en_salles_ams_url
    click_on "New films asiatiques en salles am"

    fill_in "Name", with: @_films_asiatiques_en_salles_am.name
    click_on "Create Films asiatiques en salles am"

    assert_text "Films asiatiques en salles am was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques en salles am" do
    visit _films_asiatiques_en_salles_am_url(@_films_asiatiques_en_salles_am)
    click_on "Edit this films asiatiques en salles am", match: :first

    fill_in "Name", with: @_films_asiatiques_en_salles_am.name
    click_on "Update Films asiatiques en salles am"

    assert_text "Films asiatiques en salles am was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques en salles am" do
    visit _films_asiatiques_en_salles_am_url(@_films_asiatiques_en_salles_am)
    click_on "Destroy this films asiatiques en salles am", match: :first

    assert_text "Films asiatiques en salles am was successfully destroyed"
  end
end
