require "application_system_test_case"

class DramasUniversTest < ApplicationSystemTestCase
  setup do
    @_dramas_univer = _dramas_univers(:one)
  end

  test "visiting the index" do
    visit _dramas_univers_url
    assert_selector "h1", text: "Dramas univers"
  end

  test "should create dramas univer" do
    visit _dramas_univers_url
    click_on "New dramas univer"

    fill_in "Name", with: @_dramas_univer.name
    click_on "Create Dramas univer"

    assert_text "Dramas univer was successfully created"
    click_on "Back"
  end

  test "should update Dramas univer" do
    visit _dramas_univer_url(@_dramas_univer)
    click_on "Edit this dramas univer", match: :first

    fill_in "Name", with: @_dramas_univer.name
    click_on "Update Dramas univer"

    assert_text "Dramas univer was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas univer" do
    visit _dramas_univer_url(@_dramas_univer)
    click_on "Destroy this dramas univer", match: :first

    assert_text "Dramas univer was successfully destroyed"
  end
end
