require "application_system_test_case"

class FilmsAsiatiquesTypesTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_type = _films_asiatiques_types(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_types_url
    assert_selector "h1", text: "Films asiatiques types"
  end

  test "should create films asiatiques type" do
    visit _films_asiatiques_types_url
    click_on "New films asiatiques type"

    fill_in "Name", with: @_films_asiatiques_type.name
    click_on "Create Films asiatiques type"

    assert_text "Films asiatiques type was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques type" do
    visit _films_asiatiques_type_url(@_films_asiatiques_type)
    click_on "Edit this films asiatiques type", match: :first

    fill_in "Name", with: @_films_asiatiques_type.name
    click_on "Update Films asiatiques type"

    assert_text "Films asiatiques type was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques type" do
    visit _films_asiatiques_type_url(@_films_asiatiques_type)
    click_on "Destroy this films asiatiques type", match: :first

    assert_text "Films asiatiques type was successfully destroyed"
  end
end
