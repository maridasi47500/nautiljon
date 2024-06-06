require "application_system_test_case"

class FicheUniversDramasTest < ApplicationSystemTestCase
  setup do
    @_fiche_univers_drama = _fiche_univers_dramas(:one)
  end

  test "visiting the index" do
    visit _fiche_univers_dramas_url
    assert_selector "h1", text: "Fiche univers dramas"
  end

  test "should create fiche univers drama" do
    visit _fiche_univers_dramas_url
    click_on "New fiche univers drama"

    fill_in "Name", with: @_fiche_univers_drama.name
    click_on "Create Fiche univers drama"

    assert_text "Fiche univers drama was successfully created"
    click_on "Back"
  end

  test "should update Fiche univers drama" do
    visit _fiche_univers_drama_url(@_fiche_univers_drama)
    click_on "Edit this fiche univers drama", match: :first

    fill_in "Name", with: @_fiche_univers_drama.name
    click_on "Update Fiche univers drama"

    assert_text "Fiche univers drama was successfully updated"
    click_on "Back"
  end

  test "should destroy Fiche univers drama" do
    visit _fiche_univers_drama_url(@_fiche_univers_drama)
    click_on "Destroy this fiche univers drama", match: :first

    assert_text "Fiche univers drama was successfully destroyed"
  end
end
