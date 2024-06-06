require "application_system_test_case"

class GoodiesTypesTest < ApplicationSystemTestCase
  setup do
    @_goodies_type = _goodies_types(:one)
  end

  test "visiting the index" do
    visit _goodies_types_url
    assert_selector "h1", text: "Goodies types"
  end

  test "should create goodies type" do
    visit _goodies_types_url
    click_on "New goodies type"

    fill_in "Name", with: @_goodies_type.name
    click_on "Create Goodies type"

    assert_text "Goodies type was successfully created"
    click_on "Back"
  end

  test "should update Goodies type" do
    visit _goodies_type_url(@_goodies_type)
    click_on "Edit this goodies type", match: :first

    fill_in "Name", with: @_goodies_type.name
    click_on "Update Goodies type"

    assert_text "Goodies type was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies type" do
    visit _goodies_type_url(@_goodies_type)
    click_on "Destroy this goodies type", match: :first

    assert_text "Goodies type was successfully destroyed"
  end
end
