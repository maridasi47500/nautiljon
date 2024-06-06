require "application_system_test_case"

class FicheUniversAmsTest < ApplicationSystemTestCase
  setup do
    @_fiche_univers_am = _fiche_univers_ams(:one)
  end

  test "visiting the index" do
    visit _fiche_univers_ams_url
    assert_selector "h1", text: "Fiche univers ams"
  end

  test "should create fiche univers am" do
    visit _fiche_univers_ams_url
    click_on "New fiche univers am"

    fill_in "Name", with: @_fiche_univers_am.name
    click_on "Create Fiche univers am"

    assert_text "Fiche univers am was successfully created"
    click_on "Back"
  end

  test "should update Fiche univers am" do
    visit _fiche_univers_am_url(@_fiche_univers_am)
    click_on "Edit this fiche univers am", match: :first

    fill_in "Name", with: @_fiche_univers_am.name
    click_on "Update Fiche univers am"

    assert_text "Fiche univers am was successfully updated"
    click_on "Back"
  end

  test "should destroy Fiche univers am" do
    visit _fiche_univers_am_url(@_fiche_univers_am)
    click_on "Destroy this fiche univers am", match: :first

    assert_text "Fiche univers am was successfully destroyed"
  end
end
