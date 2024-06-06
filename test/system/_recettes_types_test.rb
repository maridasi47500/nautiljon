require "application_system_test_case"

class RecettesTypesTest < ApplicationSystemTestCase
  setup do
    @_recettes_type = _recettes_types(:one)
  end

  test "visiting the index" do
    visit _recettes_types_url
    assert_selector "h1", text: "Recettes types"
  end

  test "should create recettes type" do
    visit _recettes_types_url
    click_on "New recettes type"

    fill_in "Name", with: @_recettes_type.name
    click_on "Create Recettes type"

    assert_text "Recettes type was successfully created"
    click_on "Back"
  end

  test "should update Recettes type" do
    visit _recettes_type_url(@_recettes_type)
    click_on "Edit this recettes type", match: :first

    fill_in "Name", with: @_recettes_type.name
    click_on "Update Recettes type"

    assert_text "Recettes type was successfully updated"
    click_on "Back"
  end

  test "should destroy Recettes type" do
    visit _recettes_type_url(@_recettes_type)
    click_on "Destroy this recettes type", match: :first

    assert_text "Recettes type was successfully destroyed"
  end
end
