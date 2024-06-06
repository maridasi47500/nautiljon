require "application_system_test_case"

class PhotobooksGoodiesTest < ApplicationSystemTestCase
  setup do
    @_photobooks_goody = _photobooks_goodies(:one)
  end

  test "visiting the index" do
    visit _photobooks_goodies_url
    assert_selector "h1", text: "Photobooks goodies"
  end

  test "should create photobooks goody" do
    visit _photobooks_goodies_url
    click_on "New photobooks goody"

    fill_in "Name", with: @_photobooks_goody.name
    click_on "Create Photobooks goody"

    assert_text "Photobooks goody was successfully created"
    click_on "Back"
  end

  test "should update Photobooks goody" do
    visit _photobooks_goody_url(@_photobooks_goody)
    click_on "Edit this photobooks goody", match: :first

    fill_in "Name", with: @_photobooks_goody.name
    click_on "Update Photobooks goody"

    assert_text "Photobooks goody was successfully updated"
    click_on "Back"
  end

  test "should destroy Photobooks goody" do
    visit _photobooks_goody_url(@_photobooks_goody)
    click_on "Destroy this photobooks goody", match: :first

    assert_text "Photobooks goody was successfully destroyed"
  end
end
