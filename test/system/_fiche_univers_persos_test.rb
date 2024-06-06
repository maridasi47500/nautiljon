require "application_system_test_case"

class FicheUniversPersosTest < ApplicationSystemTestCase
  setup do
    @_fiche_univers_perso = _fiche_univers_persos(:one)
  end

  test "visiting the index" do
    visit _fiche_univers_persos_url
    assert_selector "h1", text: "Fiche univers persos"
  end

  test "should create fiche univers perso" do
    visit _fiche_univers_persos_url
    click_on "New fiche univers perso"

    fill_in "Name", with: @_fiche_univers_perso.name
    click_on "Create Fiche univers perso"

    assert_text "Fiche univers perso was successfully created"
    click_on "Back"
  end

  test "should update Fiche univers perso" do
    visit _fiche_univers_perso_url(@_fiche_univers_perso)
    click_on "Edit this fiche univers perso", match: :first

    fill_in "Name", with: @_fiche_univers_perso.name
    click_on "Update Fiche univers perso"

    assert_text "Fiche univers perso was successfully updated"
    click_on "Back"
  end

  test "should destroy Fiche univers perso" do
    visit _fiche_univers_perso_url(@_fiche_univers_perso)
    click_on "Destroy this fiche univers perso", match: :first

    assert_text "Fiche univers perso was successfully destroyed"
  end
end
