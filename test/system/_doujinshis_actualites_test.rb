require "application_system_test_case"

class DoujinshisActualitesTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_actualite = _doujinshis_actualites(:one)
  end

  test "visiting the index" do
    visit _doujinshis_actualites_url
    assert_selector "h1", text: "Doujinshis actualites"
  end

  test "should create doujinshis actualite" do
    visit _doujinshis_actualites_url
    click_on "New doujinshis actualite"

    fill_in "Name", with: @_doujinshis_actualite.name
    click_on "Create Doujinshis actualite"

    assert_text "Doujinshis actualite was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis actualite" do
    visit _doujinshis_actualite_url(@_doujinshis_actualite)
    click_on "Edit this doujinshis actualite", match: :first

    fill_in "Name", with: @_doujinshis_actualite.name
    click_on "Update Doujinshis actualite"

    assert_text "Doujinshis actualite was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis actualite" do
    visit _doujinshis_actualite_url(@_doujinshis_actualite)
    click_on "Destroy this doujinshis actualite", match: :first

    assert_text "Doujinshis actualite was successfully destroyed"
  end
end
