require "application_system_test_case"

class FicheUniversJvPersosTest < ApplicationSystemTestCase
  setup do
    @_fiche_univers_jv_perso = _fiche_univers_jv_persos(:one)
  end

  test "visiting the index" do
    visit _fiche_univers_jv_persos_url
    assert_selector "h1", text: "Fiche univers jv persos"
  end

  test "should create fiche univers jv perso" do
    visit _fiche_univers_jv_persos_url
    click_on "New fiche univers jv perso"

    fill_in "Name", with: @_fiche_univers_jv_perso.name
    click_on "Create Fiche univers jv perso"

    assert_text "Fiche univers jv perso was successfully created"
    click_on "Back"
  end

  test "should update Fiche univers jv perso" do
    visit _fiche_univers_jv_perso_url(@_fiche_univers_jv_perso)
    click_on "Edit this fiche univers jv perso", match: :first

    fill_in "Name", with: @_fiche_univers_jv_perso.name
    click_on "Update Fiche univers jv perso"

    assert_text "Fiche univers jv perso was successfully updated"
    click_on "Back"
  end

  test "should destroy Fiche univers jv perso" do
    visit _fiche_univers_jv_perso_url(@_fiche_univers_jv_perso)
    click_on "Destroy this fiche univers jv perso", match: :first

    assert_text "Fiche univers jv perso was successfully destroyed"
  end
end
