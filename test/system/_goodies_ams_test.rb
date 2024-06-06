require "application_system_test_case"

class GoodiesAmsTest < ApplicationSystemTestCase
  setup do
    @_goodies_am = _goodies_ams(:one)
  end

  test "visiting the index" do
    visit _goodies_ams_url
    assert_selector "h1", text: "Goodies ams"
  end

  test "should create goodies am" do
    visit _goodies_ams_url
    click_on "New goodies am"

    fill_in "Name", with: @_goodies_am.name
    click_on "Create Goodies am"

    assert_text "Goodies am was successfully created"
    click_on "Back"
  end

  test "should update Goodies am" do
    visit _goodies_am_url(@_goodies_am)
    click_on "Edit this goodies am", match: :first

    fill_in "Name", with: @_goodies_am.name
    click_on "Update Goodies am"

    assert_text "Goodies am was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies am" do
    visit _goodies_am_url(@_goodies_am)
    click_on "Destroy this goodies am", match: :first

    assert_text "Goodies am was successfully destroyed"
  end
end
