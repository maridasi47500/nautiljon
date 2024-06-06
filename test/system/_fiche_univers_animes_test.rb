require "application_system_test_case"

class FicheUniversAnimesTest < ApplicationSystemTestCase
  setup do
    @_fiche_univers_anime = _fiche_univers_animes(:one)
  end

  test "visiting the index" do
    visit _fiche_univers_animes_url
    assert_selector "h1", text: "Fiche univers animes"
  end

  test "should create fiche univers anime" do
    visit _fiche_univers_animes_url
    click_on "New fiche univers anime"

    fill_in "Name", with: @_fiche_univers_anime.name
    click_on "Create Fiche univers anime"

    assert_text "Fiche univers anime was successfully created"
    click_on "Back"
  end

  test "should update Fiche univers anime" do
    visit _fiche_univers_anime_url(@_fiche_univers_anime)
    click_on "Edit this fiche univers anime", match: :first

    fill_in "Name", with: @_fiche_univers_anime.name
    click_on "Update Fiche univers anime"

    assert_text "Fiche univers anime was successfully updated"
    click_on "Back"
  end

  test "should destroy Fiche univers anime" do
    visit _fiche_univers_anime_url(@_fiche_univers_anime)
    click_on "Destroy this fiche univers anime", match: :first

    assert_text "Fiche univers anime was successfully destroyed"
  end
end
