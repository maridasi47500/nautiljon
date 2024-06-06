require "application_system_test_case"

class FilmsAsiatiquesGeneriquesTypesTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_generiques_type = _films_asiatiques_generiques_types(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_generiques_types_url
    assert_selector "h1", text: "Films asiatiques generiques types"
  end

  test "should create films asiatiques generiques type" do
    visit _films_asiatiques_generiques_types_url
    click_on "New films asiatiques generiques type"

    fill_in "Name", with: @_films_asiatiques_generiques_type.name
    click_on "Create Films asiatiques generiques type"

    assert_text "Films asiatiques generiques type was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques generiques type" do
    visit _films_asiatiques_generiques_type_url(@_films_asiatiques_generiques_type)
    click_on "Edit this films asiatiques generiques type", match: :first

    fill_in "Name", with: @_films_asiatiques_generiques_type.name
    click_on "Update Films asiatiques generiques type"

    assert_text "Films asiatiques generiques type was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques generiques type" do
    visit _films_asiatiques_generiques_type_url(@_films_asiatiques_generiques_type)
    click_on "Destroy this films asiatiques generiques type", match: :first

    assert_text "Films asiatiques generiques type was successfully destroyed"
  end
end
