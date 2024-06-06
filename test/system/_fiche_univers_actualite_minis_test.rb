require "application_system_test_case"

class FicheUniversActualiteMinisTest < ApplicationSystemTestCase
  setup do
    @_fiche_univers_actualite_mini = _fiche_univers_actualite_minis(:one)
  end

  test "visiting the index" do
    visit _fiche_univers_actualite_minis_url
    assert_selector "h1", text: "Fiche univers actualite minis"
  end

  test "should create fiche univers actualite mini" do
    visit _fiche_univers_actualite_minis_url
    click_on "New fiche univers actualite mini"

    fill_in "Name", with: @_fiche_univers_actualite_mini.name
    click_on "Create Fiche univers actualite mini"

    assert_text "Fiche univers actualite mini was successfully created"
    click_on "Back"
  end

  test "should update Fiche univers actualite mini" do
    visit _fiche_univers_actualite_mini_url(@_fiche_univers_actualite_mini)
    click_on "Edit this fiche univers actualite mini", match: :first

    fill_in "Name", with: @_fiche_univers_actualite_mini.name
    click_on "Update Fiche univers actualite mini"

    assert_text "Fiche univers actualite mini was successfully updated"
    click_on "Back"
  end

  test "should destroy Fiche univers actualite mini" do
    visit _fiche_univers_actualite_mini_url(@_fiche_univers_actualite_mini)
    click_on "Destroy this fiche univers actualite mini", match: :first

    assert_text "Fiche univers actualite mini was successfully destroyed"
  end
end
