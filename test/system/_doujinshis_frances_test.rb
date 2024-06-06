require "application_system_test_case"

class DoujinshisFrancesTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_france = _doujinshis_frances(:one)
  end

  test "visiting the index" do
    visit _doujinshis_frances_url
    assert_selector "h1", text: "Doujinshis frances"
  end

  test "should create doujinshis france" do
    visit _doujinshis_frances_url
    click_on "New doujinshis france"

    fill_in "Name", with: @_doujinshis_france.name
    click_on "Create Doujinshis france"

    assert_text "Doujinshis france was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis france" do
    visit _doujinshis_france_url(@_doujinshis_france)
    click_on "Edit this doujinshis france", match: :first

    fill_in "Name", with: @_doujinshis_france.name
    click_on "Update Doujinshis france"

    assert_text "Doujinshis france was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis france" do
    visit _doujinshis_france_url(@_doujinshis_france)
    click_on "Destroy this doujinshis france", match: :first

    assert_text "Doujinshis france was successfully destroyed"
  end
end
