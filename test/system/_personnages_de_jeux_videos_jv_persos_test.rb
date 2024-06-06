require "application_system_test_case"

class PersonnagesDeJeuxVideosJvPersosTest < ApplicationSystemTestCase
  setup do
    @_personnages_de_jeux_videos_jv_perso = _personnages_de_jeux_videos_jv_persos(:one)
  end

  test "visiting the index" do
    visit _personnages_de_jeux_videos_jv_persos_url
    assert_selector "h1", text: "Personnages de jeux videos jv persos"
  end

  test "should create personnages de jeux videos jv perso" do
    visit _personnages_de_jeux_videos_jv_persos_url
    click_on "New personnages de jeux videos jv perso"

    fill_in "Name", with: @_personnages_de_jeux_videos_jv_perso.name
    click_on "Create Personnages de jeux videos jv perso"

    assert_text "Personnages de jeux videos jv perso was successfully created"
    click_on "Back"
  end

  test "should update Personnages de jeux videos jv perso" do
    visit _personnages_de_jeux_videos_jv_perso_url(@_personnages_de_jeux_videos_jv_perso)
    click_on "Edit this personnages de jeux videos jv perso", match: :first

    fill_in "Name", with: @_personnages_de_jeux_videos_jv_perso.name
    click_on "Update Personnages de jeux videos jv perso"

    assert_text "Personnages de jeux videos jv perso was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnages de jeux videos jv perso" do
    visit _personnages_de_jeux_videos_jv_perso_url(@_personnages_de_jeux_videos_jv_perso)
    click_on "Destroy this personnages de jeux videos jv perso", match: :first

    assert_text "Personnages de jeux videos jv perso was successfully destroyed"
  end
end
