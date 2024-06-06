require "application_system_test_case"

class DoujinshisTypesTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_type = _doujinshis_types(:one)
  end

  test "visiting the index" do
    visit _doujinshis_types_url
    assert_selector "h1", text: "Doujinshis types"
  end

  test "should create doujinshis type" do
    visit _doujinshis_types_url
    click_on "New doujinshis type"

    fill_in "Name", with: @_doujinshis_type.name
    click_on "Create Doujinshis type"

    assert_text "Doujinshis type was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis type" do
    visit _doujinshis_type_url(@_doujinshis_type)
    click_on "Edit this doujinshis type", match: :first

    fill_in "Name", with: @_doujinshis_type.name
    click_on "Update Doujinshis type"

    assert_text "Doujinshis type was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis type" do
    visit _doujinshis_type_url(@_doujinshis_type)
    click_on "Destroy this doujinshis type", match: :first

    assert_text "Doujinshis type was successfully destroyed"
  end
end
