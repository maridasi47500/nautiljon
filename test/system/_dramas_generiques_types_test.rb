require "application_system_test_case"

class DramasGeneriquesTypesTest < ApplicationSystemTestCase
  setup do
    @_dramas_generiques_type = _dramas_generiques_types(:one)
  end

  test "visiting the index" do
    visit _dramas_generiques_types_url
    assert_selector "h1", text: "Dramas generiques types"
  end

  test "should create dramas generiques type" do
    visit _dramas_generiques_types_url
    click_on "New dramas generiques type"

    fill_in "Name", with: @_dramas_generiques_type.name
    click_on "Create Dramas generiques type"

    assert_text "Dramas generiques type was successfully created"
    click_on "Back"
  end

  test "should update Dramas generiques type" do
    visit _dramas_generiques_type_url(@_dramas_generiques_type)
    click_on "Edit this dramas generiques type", match: :first

    fill_in "Name", with: @_dramas_generiques_type.name
    click_on "Update Dramas generiques type"

    assert_text "Dramas generiques type was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas generiques type" do
    visit _dramas_generiques_type_url(@_dramas_generiques_type)
    click_on "Destroy this dramas generiques type", match: :first

    assert_text "Dramas generiques type was successfully destroyed"
  end
end
