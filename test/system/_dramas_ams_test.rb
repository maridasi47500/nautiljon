require "application_system_test_case"

class DramasAmsTest < ApplicationSystemTestCase
  setup do
    @_dramas_am = _dramas_ams(:one)
  end

  test "visiting the index" do
    visit _dramas_ams_url
    assert_selector "h1", text: "Dramas ams"
  end

  test "should create dramas am" do
    visit _dramas_ams_url
    click_on "New dramas am"

    fill_in "Name", with: @_dramas_am.name
    click_on "Create Dramas am"

    assert_text "Dramas am was successfully created"
    click_on "Back"
  end

  test "should update Dramas am" do
    visit _dramas_am_url(@_dramas_am)
    click_on "Edit this dramas am", match: :first

    fill_in "Name", with: @_dramas_am.name
    click_on "Update Dramas am"

    assert_text "Dramas am was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas am" do
    visit _dramas_am_url(@_dramas_am)
    click_on "Destroy this dramas am", match: :first

    assert_text "Dramas am was successfully destroyed"
  end
end
