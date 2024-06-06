require "application_system_test_case"

class PhotobooksTypesTest < ApplicationSystemTestCase
  setup do
    @_photobooks_type = _photobooks_types(:one)
  end

  test "visiting the index" do
    visit _photobooks_types_url
    assert_selector "h1", text: "Photobooks types"
  end

  test "should create photobooks type" do
    visit _photobooks_types_url
    click_on "New photobooks type"

    fill_in "Name", with: @_photobooks_type.name
    click_on "Create Photobooks type"

    assert_text "Photobooks type was successfully created"
    click_on "Back"
  end

  test "should update Photobooks type" do
    visit _photobooks_type_url(@_photobooks_type)
    click_on "Edit this photobooks type", match: :first

    fill_in "Name", with: @_photobooks_type.name
    click_on "Update Photobooks type"

    assert_text "Photobooks type was successfully updated"
    click_on "Back"
  end

  test "should destroy Photobooks type" do
    visit _photobooks_type_url(@_photobooks_type)
    click_on "Destroy this photobooks type", match: :first

    assert_text "Photobooks type was successfully destroyed"
  end
end
