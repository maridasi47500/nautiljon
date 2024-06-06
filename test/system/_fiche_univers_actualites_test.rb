require "application_system_test_case"

class FicheUniversActualitesTest < ApplicationSystemTestCase
  setup do
    @_fiche_univers_actualite = _fiche_univers_actualites(:one)
  end

  test "visiting the index" do
    visit _fiche_univers_actualites_url
    assert_selector "h1", text: "Fiche univers actualites"
  end

  test "should create fiche univers actualite" do
    visit _fiche_univers_actualites_url
    click_on "New fiche univers actualite"

    fill_in "Name", with: @_fiche_univers_actualite.name
    click_on "Create Fiche univers actualite"

    assert_text "Fiche univers actualite was successfully created"
    click_on "Back"
  end

  test "should update Fiche univers actualite" do
    visit _fiche_univers_actualite_url(@_fiche_univers_actualite)
    click_on "Edit this fiche univers actualite", match: :first

    fill_in "Name", with: @_fiche_univers_actualite.name
    click_on "Update Fiche univers actualite"

    assert_text "Fiche univers actualite was successfully updated"
    click_on "Back"
  end

  test "should destroy Fiche univers actualite" do
    visit _fiche_univers_actualite_url(@_fiche_univers_actualite)
    click_on "Destroy this fiche univers actualite", match: :first

    assert_text "Fiche univers actualite was successfully destroyed"
  end
end
