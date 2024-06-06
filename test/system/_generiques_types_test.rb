require "application_system_test_case"

class GeneriquesTypesTest < ApplicationSystemTestCase
  setup do
    @_generiques_type = _generiques_types(:one)
  end

  test "visiting the index" do
    visit _generiques_types_url
    assert_selector "h1", text: "Generiques types"
  end

  test "should create generiques type" do
    visit _generiques_types_url
    click_on "New generiques type"

    fill_in "Name", with: @_generiques_type.name
    click_on "Create Generiques type"

    assert_text "Generiques type was successfully created"
    click_on "Back"
  end

  test "should update Generiques type" do
    visit _generiques_type_url(@_generiques_type)
    click_on "Edit this generiques type", match: :first

    fill_in "Name", with: @_generiques_type.name
    click_on "Update Generiques type"

    assert_text "Generiques type was successfully updated"
    click_on "Back"
  end

  test "should destroy Generiques type" do
    visit _generiques_type_url(@_generiques_type)
    click_on "Destroy this generiques type", match: :first

    assert_text "Generiques type was successfully destroyed"
  end
end
