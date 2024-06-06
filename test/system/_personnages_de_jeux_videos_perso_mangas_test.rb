require "application_system_test_case"

class PersonnagesDeJeuxVideosPersoMangasTest < ApplicationSystemTestCase
  setup do
    @_personnages_de_jeux_videos_perso_manga = _personnages_de_jeux_videos_perso_mangas(:one)
  end

  test "visiting the index" do
    visit _personnages_de_jeux_videos_perso_mangas_url
    assert_selector "h1", text: "Personnages de jeux videos perso mangas"
  end

  test "should create personnages de jeux videos perso manga" do
    visit _personnages_de_jeux_videos_perso_mangas_url
    click_on "New personnages de jeux videos perso manga"

    fill_in "Name", with: @_personnages_de_jeux_videos_perso_manga.name
    click_on "Create Personnages de jeux videos perso manga"

    assert_text "Personnages de jeux videos perso manga was successfully created"
    click_on "Back"
  end

  test "should update Personnages de jeux videos perso manga" do
    visit _personnages_de_jeux_videos_perso_manga_url(@_personnages_de_jeux_videos_perso_manga)
    click_on "Edit this personnages de jeux videos perso manga", match: :first

    fill_in "Name", with: @_personnages_de_jeux_videos_perso_manga.name
    click_on "Update Personnages de jeux videos perso manga"

    assert_text "Personnages de jeux videos perso manga was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnages de jeux videos perso manga" do
    visit _personnages_de_jeux_videos_perso_manga_url(@_personnages_de_jeux_videos_perso_manga)
    click_on "Destroy this personnages de jeux videos perso manga", match: :first

    assert_text "Personnages de jeux videos perso manga was successfully destroyed"
  end
end
