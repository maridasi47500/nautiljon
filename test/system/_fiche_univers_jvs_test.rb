require "application_system_test_case"

class FicheUniversJvsTest < ApplicationSystemTestCase
  setup do
    @_fiche_univers_jv = _fiche_univers_jvs(:one)
  end

  test "visiting the index" do
    visit _fiche_univers_jvs_url
    assert_selector "h1", text: "Fiche univers jvs"
  end

  test "should create fiche univers jv" do
    visit _fiche_univers_jvs_url
    click_on "New fiche univers jv"

    fill_in "Name", with: @_fiche_univers_jv.name
    click_on "Create Fiche univers jv"

    assert_text "Fiche univers jv was successfully created"
    click_on "Back"
  end

  test "should update Fiche univers jv" do
    visit _fiche_univers_jv_url(@_fiche_univers_jv)
    click_on "Edit this fiche univers jv", match: :first

    fill_in "Name", with: @_fiche_univers_jv.name
    click_on "Update Fiche univers jv"

    assert_text "Fiche univers jv was successfully updated"
    click_on "Back"
  end

  test "should destroy Fiche univers jv" do
    visit _fiche_univers_jv_url(@_fiche_univers_jv)
    click_on "Destroy this fiche univers jv", match: :first

    assert_text "Fiche univers jv was successfully destroyed"
  end
end
