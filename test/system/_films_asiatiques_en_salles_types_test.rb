require "application_system_test_case"

class FilmsAsiatiquesEnSallesTypesTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_en_salles_type = _films_asiatiques_en_salles_types(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_en_salles_types_url
    assert_selector "h1", text: "Films asiatiques en salles types"
  end

  test "should create films asiatiques en salles type" do
    visit _films_asiatiques_en_salles_types_url
    click_on "New films asiatiques en salles type"

    fill_in "Name", with: @_films_asiatiques_en_salles_type.name
    click_on "Create Films asiatiques en salles type"

    assert_text "Films asiatiques en salles type was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques en salles type" do
    visit _films_asiatiques_en_salles_type_url(@_films_asiatiques_en_salles_type)
    click_on "Edit this films asiatiques en salles type", match: :first

    fill_in "Name", with: @_films_asiatiques_en_salles_type.name
    click_on "Update Films asiatiques en salles type"

    assert_text "Films asiatiques en salles type was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques en salles type" do
    visit _films_asiatiques_en_salles_type_url(@_films_asiatiques_en_salles_type)
    click_on "Destroy this films asiatiques en salles type", match: :first

    assert_text "Films asiatiques en salles type was successfully destroyed"
  end
end
