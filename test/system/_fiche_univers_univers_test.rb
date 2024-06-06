require "application_system_test_case"

class FicheUniversUniversTest < ApplicationSystemTestCase
  setup do
    @_fiche_univers_univer = _fiche_univers_univers(:one)
  end

  test "visiting the index" do
    visit _fiche_univers_univers_url
    assert_selector "h1", text: "Fiche univers univers"
  end

  test "should create fiche univers univer" do
    visit _fiche_univers_univers_url
    click_on "New fiche univers univer"

    fill_in "Name", with: @_fiche_univers_univer.name
    click_on "Create Fiche univers univer"

    assert_text "Fiche univers univer was successfully created"
    click_on "Back"
  end

  test "should update Fiche univers univer" do
    visit _fiche_univers_univer_url(@_fiche_univers_univer)
    click_on "Edit this fiche univers univer", match: :first

    fill_in "Name", with: @_fiche_univers_univer.name
    click_on "Update Fiche univers univer"

    assert_text "Fiche univers univer was successfully updated"
    click_on "Back"
  end

  test "should destroy Fiche univers univer" do
    visit _fiche_univers_univer_url(@_fiche_univers_univer)
    click_on "Destroy this fiche univers univer", match: :first

    assert_text "Fiche univers univer was successfully destroyed"
  end
end
