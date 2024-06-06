require "application_system_test_case"

class GoodiesOstsTest < ApplicationSystemTestCase
  setup do
    @_goodies_ost = _goodies_osts(:one)
  end

  test "visiting the index" do
    visit _goodies_osts_url
    assert_selector "h1", text: "Goodies osts"
  end

  test "should create goodies ost" do
    visit _goodies_osts_url
    click_on "New goodies ost"

    fill_in "Name", with: @_goodies_ost.name
    click_on "Create Goodies ost"

    assert_text "Goodies ost was successfully created"
    click_on "Back"
  end

  test "should update Goodies ost" do
    visit _goodies_ost_url(@_goodies_ost)
    click_on "Edit this goodies ost", match: :first

    fill_in "Name", with: @_goodies_ost.name
    click_on "Update Goodies ost"

    assert_text "Goodies ost was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies ost" do
    visit _goodies_ost_url(@_goodies_ost)
    click_on "Destroy this goodies ost", match: :first

    assert_text "Goodies ost was successfully destroyed"
  end
end
