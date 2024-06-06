require "application_system_test_case"

class PhotobooksFrancesTest < ApplicationSystemTestCase
  setup do
    @_photobooks_france = _photobooks_frances(:one)
  end

  test "visiting the index" do
    visit _photobooks_frances_url
    assert_selector "h1", text: "Photobooks frances"
  end

  test "should create photobooks france" do
    visit _photobooks_frances_url
    click_on "New photobooks france"

    fill_in "Name", with: @_photobooks_france.name
    click_on "Create Photobooks france"

    assert_text "Photobooks france was successfully created"
    click_on "Back"
  end

  test "should update Photobooks france" do
    visit _photobooks_france_url(@_photobooks_france)
    click_on "Edit this photobooks france", match: :first

    fill_in "Name", with: @_photobooks_france.name
    click_on "Update Photobooks france"

    assert_text "Photobooks france was successfully updated"
    click_on "Back"
  end

  test "should destroy Photobooks france" do
    visit _photobooks_france_url(@_photobooks_france)
    click_on "Destroy this photobooks france", match: :first

    assert_text "Photobooks france was successfully destroyed"
  end
end
