require "application_system_test_case"

class PersonnagesDeJeuxVideosPersoPlusTest < ApplicationSystemTestCase
  setup do
    @_personnages_de_jeux_videos_perso_plu = _personnages_de_jeux_videos_perso_plus(:one)
  end

  test "visiting the index" do
    visit _personnages_de_jeux_videos_perso_plus_url
    assert_selector "h1", text: "Personnages de jeux videos perso plus"
  end

  test "should create personnages de jeux videos perso plu" do
    visit _personnages_de_jeux_videos_perso_plus_url
    click_on "New personnages de jeux videos perso plu"

    fill_in "Name", with: @_personnages_de_jeux_videos_perso_plu.name
    click_on "Create Personnages de jeux videos perso plu"

    assert_text "Personnages de jeux videos perso plu was successfully created"
    click_on "Back"
  end

  test "should update Personnages de jeux videos perso plu" do
    visit _personnages_de_jeux_videos_perso_plu_url(@_personnages_de_jeux_videos_perso_plu)
    click_on "Edit this personnages de jeux videos perso plu", match: :first

    fill_in "Name", with: @_personnages_de_jeux_videos_perso_plu.name
    click_on "Update Personnages de jeux videos perso plu"

    assert_text "Personnages de jeux videos perso plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnages de jeux videos perso plu" do
    visit _personnages_de_jeux_videos_perso_plu_url(@_personnages_de_jeux_videos_perso_plu)
    click_on "Destroy this personnages de jeux videos perso plu", match: :first

    assert_text "Personnages de jeux videos perso plu was successfully destroyed"
  end
end
