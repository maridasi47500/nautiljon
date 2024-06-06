require "application_system_test_case"

class FicheUniversCatsTest < ApplicationSystemTestCase
  setup do
    @_fiche_univers_cat = _fiche_univers_cats(:one)
  end

  test "visiting the index" do
    visit _fiche_univers_cats_url
    assert_selector "h1", text: "Fiche univers cats"
  end

  test "should create fiche univers cat" do
    visit _fiche_univers_cats_url
    click_on "New fiche univers cat"

    fill_in "Name", with: @_fiche_univers_cat.name
    click_on "Create Fiche univers cat"

    assert_text "Fiche univers cat was successfully created"
    click_on "Back"
  end

  test "should update Fiche univers cat" do
    visit _fiche_univers_cat_url(@_fiche_univers_cat)
    click_on "Edit this fiche univers cat", match: :first

    fill_in "Name", with: @_fiche_univers_cat.name
    click_on "Update Fiche univers cat"

    assert_text "Fiche univers cat was successfully updated"
    click_on "Back"
  end

  test "should destroy Fiche univers cat" do
    visit _fiche_univers_cat_url(@_fiche_univers_cat)
    click_on "Destroy this fiche univers cat", match: :first

    assert_text "Fiche univers cat was successfully destroyed"
  end
end
