require "application_system_test_case"

class DoujinshisPersoMangasTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_perso_manga = _doujinshis_perso_mangas(:one)
  end

  test "visiting the index" do
    visit _doujinshis_perso_mangas_url
    assert_selector "h1", text: "Doujinshis perso mangas"
  end

  test "should create doujinshis perso manga" do
    visit _doujinshis_perso_mangas_url
    click_on "New doujinshis perso manga"

    fill_in "Name", with: @_doujinshis_perso_manga.name
    click_on "Create Doujinshis perso manga"

    assert_text "Doujinshis perso manga was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis perso manga" do
    visit _doujinshis_perso_manga_url(@_doujinshis_perso_manga)
    click_on "Edit this doujinshis perso manga", match: :first

    fill_in "Name", with: @_doujinshis_perso_manga.name
    click_on "Update Doujinshis perso manga"

    assert_text "Doujinshis perso manga was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis perso manga" do
    visit _doujinshis_perso_manga_url(@_doujinshis_perso_manga)
    click_on "Destroy this doujinshis perso manga", match: :first

    assert_text "Doujinshis perso manga was successfully destroyed"
  end
end
