require "application_system_test_case"

class FicheUniversDoujinshisTest < ApplicationSystemTestCase
  setup do
    @_fiche_univers_doujinshi = _fiche_univers_doujinshis(:one)
  end

  test "visiting the index" do
    visit _fiche_univers_doujinshis_url
    assert_selector "h1", text: "Fiche univers doujinshis"
  end

  test "should create fiche univers doujinshi" do
    visit _fiche_univers_doujinshis_url
    click_on "New fiche univers doujinshi"

    fill_in "Name", with: @_fiche_univers_doujinshi.name
    click_on "Create Fiche univers doujinshi"

    assert_text "Fiche univers doujinshi was successfully created"
    click_on "Back"
  end

  test "should update Fiche univers doujinshi" do
    visit _fiche_univers_doujinshi_url(@_fiche_univers_doujinshi)
    click_on "Edit this fiche univers doujinshi", match: :first

    fill_in "Name", with: @_fiche_univers_doujinshi.name
    click_on "Update Fiche univers doujinshi"

    assert_text "Fiche univers doujinshi was successfully updated"
    click_on "Back"
  end

  test "should destroy Fiche univers doujinshi" do
    visit _fiche_univers_doujinshi_url(@_fiche_univers_doujinshi)
    click_on "Destroy this fiche univers doujinshi", match: :first

    assert_text "Fiche univers doujinshi was successfully destroyed"
  end
end
