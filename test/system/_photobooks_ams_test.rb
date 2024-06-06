require "application_system_test_case"

class PhotobooksAmsTest < ApplicationSystemTestCase
  setup do
    @_photobooks_am = _photobooks_ams(:one)
  end

  test "visiting the index" do
    visit _photobooks_ams_url
    assert_selector "h1", text: "Photobooks ams"
  end

  test "should create photobooks am" do
    visit _photobooks_ams_url
    click_on "New photobooks am"

    fill_in "Name", with: @_photobooks_am.name
    click_on "Create Photobooks am"

    assert_text "Photobooks am was successfully created"
    click_on "Back"
  end

  test "should update Photobooks am" do
    visit _photobooks_am_url(@_photobooks_am)
    click_on "Edit this photobooks am", match: :first

    fill_in "Name", with: @_photobooks_am.name
    click_on "Update Photobooks am"

    assert_text "Photobooks am was successfully updated"
    click_on "Back"
  end

  test "should destroy Photobooks am" do
    visit _photobooks_am_url(@_photobooks_am)
    click_on "Destroy this photobooks am", match: :first

    assert_text "Photobooks am was successfully destroyed"
  end
end
