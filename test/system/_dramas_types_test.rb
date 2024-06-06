require "application_system_test_case"

class DramasTypesTest < ApplicationSystemTestCase
  setup do
    @_dramas_type = _dramas_types(:one)
  end

  test "visiting the index" do
    visit _dramas_types_url
    assert_selector "h1", text: "Dramas types"
  end

  test "should create dramas type" do
    visit _dramas_types_url
    click_on "New dramas type"

    fill_in "Name", with: @_dramas_type.name
    click_on "Create Dramas type"

    assert_text "Dramas type was successfully created"
    click_on "Back"
  end

  test "should update Dramas type" do
    visit _dramas_type_url(@_dramas_type)
    click_on "Edit this dramas type", match: :first

    fill_in "Name", with: @_dramas_type.name
    click_on "Update Dramas type"

    assert_text "Dramas type was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas type" do
    visit _dramas_type_url(@_dramas_type)
    click_on "Destroy this dramas type", match: :first

    assert_text "Dramas type was successfully destroyed"
  end
end
