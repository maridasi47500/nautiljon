require "application_system_test_case"

class DramasOstsTest < ApplicationSystemTestCase
  setup do
    @_dramas_ost = _dramas_osts(:one)
  end

  test "visiting the index" do
    visit _dramas_osts_url
    assert_selector "h1", text: "Dramas osts"
  end

  test "should create dramas ost" do
    visit _dramas_osts_url
    click_on "New dramas ost"

    fill_in "Name", with: @_dramas_ost.name
    click_on "Create Dramas ost"

    assert_text "Dramas ost was successfully created"
    click_on "Back"
  end

  test "should update Dramas ost" do
    visit _dramas_ost_url(@_dramas_ost)
    click_on "Edit this dramas ost", match: :first

    fill_in "Name", with: @_dramas_ost.name
    click_on "Update Dramas ost"

    assert_text "Dramas ost was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas ost" do
    visit _dramas_ost_url(@_dramas_ost)
    click_on "Destroy this dramas ost", match: :first

    assert_text "Dramas ost was successfully destroyed"
  end
end
