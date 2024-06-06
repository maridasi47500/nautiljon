require "application_system_test_case"

class DoujinshisAmsTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_am = _doujinshis_ams(:one)
  end

  test "visiting the index" do
    visit _doujinshis_ams_url
    assert_selector "h1", text: "Doujinshis ams"
  end

  test "should create doujinshis am" do
    visit _doujinshis_ams_url
    click_on "New doujinshis am"

    fill_in "Name", with: @_doujinshis_am.name
    click_on "Create Doujinshis am"

    assert_text "Doujinshis am was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis am" do
    visit _doujinshis_am_url(@_doujinshis_am)
    click_on "Edit this doujinshis am", match: :first

    fill_in "Name", with: @_doujinshis_am.name
    click_on "Update Doujinshis am"

    assert_text "Doujinshis am was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis am" do
    visit _doujinshis_am_url(@_doujinshis_am)
    click_on "Destroy this doujinshis am", match: :first

    assert_text "Doujinshis am was successfully destroyed"
  end
end
