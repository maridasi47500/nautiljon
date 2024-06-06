require "application_system_test_case"

class FicheUniversPersoMangasTest < ApplicationSystemTestCase
  setup do
    @_fiche_univers_perso_manga = _fiche_univers_perso_mangas(:one)
  end

  test "visiting the index" do
    visit _fiche_univers_perso_mangas_url
    assert_selector "h1", text: "Fiche univers perso mangas"
  end

  test "should create fiche univers perso manga" do
    visit _fiche_univers_perso_mangas_url
    click_on "New fiche univers perso manga"

    fill_in "Name", with: @_fiche_univers_perso_manga.name
    click_on "Create Fiche univers perso manga"

    assert_text "Fiche univers perso manga was successfully created"
    click_on "Back"
  end

  test "should update Fiche univers perso manga" do
    visit _fiche_univers_perso_manga_url(@_fiche_univers_perso_manga)
    click_on "Edit this fiche univers perso manga", match: :first

    fill_in "Name", with: @_fiche_univers_perso_manga.name
    click_on "Update Fiche univers perso manga"

    assert_text "Fiche univers perso manga was successfully updated"
    click_on "Back"
  end

  test "should destroy Fiche univers perso manga" do
    visit _fiche_univers_perso_manga_url(@_fiche_univers_perso_manga)
    click_on "Destroy this fiche univers perso manga", match: :first

    assert_text "Fiche univers perso manga was successfully destroyed"
  end
end
