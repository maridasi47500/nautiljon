require "application_system_test_case"

class FicheUniversLnsTest < ApplicationSystemTestCase
  setup do
    @_fiche_univers_ln = _fiche_univers_lns(:one)
  end

  test "visiting the index" do
    visit _fiche_univers_lns_url
    assert_selector "h1", text: "Fiche univers lns"
  end

  test "should create fiche univers ln" do
    visit _fiche_univers_lns_url
    click_on "New fiche univers ln"

    fill_in "Name", with: @_fiche_univers_ln.name
    click_on "Create Fiche univers ln"

    assert_text "Fiche univers ln was successfully created"
    click_on "Back"
  end

  test "should update Fiche univers ln" do
    visit _fiche_univers_ln_url(@_fiche_univers_ln)
    click_on "Edit this fiche univers ln", match: :first

    fill_in "Name", with: @_fiche_univers_ln.name
    click_on "Update Fiche univers ln"

    assert_text "Fiche univers ln was successfully updated"
    click_on "Back"
  end

  test "should destroy Fiche univers ln" do
    visit _fiche_univers_ln_url(@_fiche_univers_ln)
    click_on "Destroy this fiche univers ln", match: :first

    assert_text "Fiche univers ln was successfully destroyed"
  end
end
