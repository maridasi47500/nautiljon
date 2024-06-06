require "application_system_test_case"

class DoujinshisActualiteMinisTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_actualite_mini = _doujinshis_actualite_minis(:one)
  end

  test "visiting the index" do
    visit _doujinshis_actualite_minis_url
    assert_selector "h1", text: "Doujinshis actualite minis"
  end

  test "should create doujinshis actualite mini" do
    visit _doujinshis_actualite_minis_url
    click_on "New doujinshis actualite mini"

    fill_in "Name", with: @_doujinshis_actualite_mini.name
    click_on "Create Doujinshis actualite mini"

    assert_text "Doujinshis actualite mini was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis actualite mini" do
    visit _doujinshis_actualite_mini_url(@_doujinshis_actualite_mini)
    click_on "Edit this doujinshis actualite mini", match: :first

    fill_in "Name", with: @_doujinshis_actualite_mini.name
    click_on "Update Doujinshis actualite mini"

    assert_text "Doujinshis actualite mini was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis actualite mini" do
    visit _doujinshis_actualite_mini_url(@_doujinshis_actualite_mini)
    click_on "Destroy this doujinshis actualite mini", match: :first

    assert_text "Doujinshis actualite mini was successfully destroyed"
  end
end
