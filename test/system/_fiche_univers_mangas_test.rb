require "application_system_test_case"

class FicheUniversMangasTest < ApplicationSystemTestCase
  setup do
    @_fiche_univers_manga = _fiche_univers_mangas(:one)
  end

  test "visiting the index" do
    visit _fiche_univers_mangas_url
    assert_selector "h1", text: "Fiche univers mangas"
  end

  test "should create fiche univers manga" do
    visit _fiche_univers_mangas_url
    click_on "New fiche univers manga"

    fill_in "Name", with: @_fiche_univers_manga.name
    click_on "Create Fiche univers manga"

    assert_text "Fiche univers manga was successfully created"
    click_on "Back"
  end

  test "should update Fiche univers manga" do
    visit _fiche_univers_manga_url(@_fiche_univers_manga)
    click_on "Edit this fiche univers manga", match: :first

    fill_in "Name", with: @_fiche_univers_manga.name
    click_on "Update Fiche univers manga"

    assert_text "Fiche univers manga was successfully updated"
    click_on "Back"
  end

  test "should destroy Fiche univers manga" do
    visit _fiche_univers_manga_url(@_fiche_univers_manga)
    click_on "Destroy this fiche univers manga", match: :first

    assert_text "Fiche univers manga was successfully destroyed"
  end
end
