require "application_system_test_case"

class FicheUniversGroupesTest < ApplicationSystemTestCase
  setup do
    @_fiche_univers_groupe = _fiche_univers_groupes(:one)
  end

  test "visiting the index" do
    visit _fiche_univers_groupes_url
    assert_selector "h1", text: "Fiche univers groupes"
  end

  test "should create fiche univers groupe" do
    visit _fiche_univers_groupes_url
    click_on "New fiche univers groupe"

    fill_in "Name", with: @_fiche_univers_groupe.name
    click_on "Create Fiche univers groupe"

    assert_text "Fiche univers groupe was successfully created"
    click_on "Back"
  end

  test "should update Fiche univers groupe" do
    visit _fiche_univers_groupe_url(@_fiche_univers_groupe)
    click_on "Edit this fiche univers groupe", match: :first

    fill_in "Name", with: @_fiche_univers_groupe.name
    click_on "Update Fiche univers groupe"

    assert_text "Fiche univers groupe was successfully updated"
    click_on "Back"
  end

  test "should destroy Fiche univers groupe" do
    visit _fiche_univers_groupe_url(@_fiche_univers_groupe)
    click_on "Destroy this fiche univers groupe", match: :first

    assert_text "Fiche univers groupe was successfully destroyed"
  end
end
