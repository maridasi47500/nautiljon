require "application_system_test_case"

class DramasCulturesTest < ApplicationSystemTestCase
  setup do
    @_dramas_culture = _dramas_cultures(:one)
  end

  test "visiting the index" do
    visit _dramas_cultures_url
    assert_selector "h1", text: "Dramas cultures"
  end

  test "should create dramas culture" do
    visit _dramas_cultures_url
    click_on "New dramas culture"

    fill_in "Name", with: @_dramas_culture.name
    click_on "Create Dramas culture"

    assert_text "Dramas culture was successfully created"
    click_on "Back"
  end

  test "should update Dramas culture" do
    visit _dramas_culture_url(@_dramas_culture)
    click_on "Edit this dramas culture", match: :first

    fill_in "Name", with: @_dramas_culture.name
    click_on "Update Dramas culture"

    assert_text "Dramas culture was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas culture" do
    visit _dramas_culture_url(@_dramas_culture)
    click_on "Destroy this dramas culture", match: :first

    assert_text "Dramas culture was successfully destroyed"
  end
end
