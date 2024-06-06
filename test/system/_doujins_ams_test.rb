require "application_system_test_case"

class DoujinsAmsTest < ApplicationSystemTestCase
  setup do
    @_doujins_am = _doujins_ams(:one)
  end

  test "visiting the index" do
    visit _doujins_ams_url
    assert_selector "h1", text: "Doujins ams"
  end

  test "should create doujins am" do
    visit _doujins_ams_url
    click_on "New doujins am"

    fill_in "Name", with: @_doujins_am.name
    click_on "Create Doujins am"

    assert_text "Doujins am was successfully created"
    click_on "Back"
  end

  test "should update Doujins am" do
    visit _doujins_am_url(@_doujins_am)
    click_on "Edit this doujins am", match: :first

    fill_in "Name", with: @_doujins_am.name
    click_on "Update Doujins am"

    assert_text "Doujins am was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujins am" do
    visit _doujins_am_url(@_doujins_am)
    click_on "Destroy this doujins am", match: :first

    assert_text "Doujins am was successfully destroyed"
  end
end
