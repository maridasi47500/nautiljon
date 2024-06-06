require "application_system_test_case"

class FicheUniversCulturesTest < ApplicationSystemTestCase
  setup do
    @_fiche_univers_culture = _fiche_univers_cultures(:one)
  end

  test "visiting the index" do
    visit _fiche_univers_cultures_url
    assert_selector "h1", text: "Fiche univers cultures"
  end

  test "should create fiche univers culture" do
    visit _fiche_univers_cultures_url
    click_on "New fiche univers culture"

    fill_in "Name", with: @_fiche_univers_culture.name
    click_on "Create Fiche univers culture"

    assert_text "Fiche univers culture was successfully created"
    click_on "Back"
  end

  test "should update Fiche univers culture" do
    visit _fiche_univers_culture_url(@_fiche_univers_culture)
    click_on "Edit this fiche univers culture", match: :first

    fill_in "Name", with: @_fiche_univers_culture.name
    click_on "Update Fiche univers culture"

    assert_text "Fiche univers culture was successfully updated"
    click_on "Back"
  end

  test "should destroy Fiche univers culture" do
    visit _fiche_univers_culture_url(@_fiche_univers_culture)
    click_on "Destroy this fiche univers culture", match: :first

    assert_text "Fiche univers culture was successfully destroyed"
  end
end
