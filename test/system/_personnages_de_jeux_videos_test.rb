require "application_system_test_case"

class PersonnagesDeJeuxVideosTest < ApplicationSystemTestCase
  setup do
    @_personnages_de_jeux_video = _personnages_de_jeux_videos(:one)
  end

  test "visiting the index" do
    visit _personnages_de_jeux_videos_url
    assert_selector "h1", text: "Personnages de jeux videos"
  end

  test "should create personnages de jeux video" do
    visit _personnages_de_jeux_videos_url
    click_on "New personnages de jeux video"

    fill_in "", with: @_personnages_de_jeux_video.
    fill_in "Personnages de jeux videos doubleur pays", with: @_personnages_de_jeux_video._personnages_de_jeux_videos_doubleur_pays_id
    fill_in "Personnages de jeux videos doubleur people", with: @_personnages_de_jeux_video._personnages_de_jeux_videos_doubleur_people_id
    fill_in "Personnages de jeux videos doubleur role", with: @_personnages_de_jeux_video._personnages_de_jeux_videos_doubleur_role_id
    fill_in "Personnages de jeux videos goodies", with: @_personnages_de_jeux_video._personnages_de_jeux_videos_goodies_id
    fill_in "Personnages de jeux videos jv", with: @_personnages_de_jeux_video._personnages_de_jeux_videos_jv_id
    fill_in "Personnages de jeux videos jv perso", with: @_personnages_de_jeux_video._personnages_de_jeux_videos_jv_perso_id
    fill_in "Personnages de jeux videos perso", with: @_personnages_de_jeux_video._personnages_de_jeux_videos_perso_id
    fill_in "Personnages de jeux videos perso manga", with: @_personnages_de_jeux_video._personnages_de_jeux_videos_perso_manga_id
    fill_in "Personnages de jeux videos perso plus", with: @_personnages_de_jeux_video._personnages_de_jeux_videos_perso_plus_id
    fill_in "Acceptregles", with: @_personnages_de_jeux_video.acceptregles
    fill_in "Comment", with: @_personnages_de_jeux_video.comment
    fill_in "Description", with: @_personnages_de_jeux_video.description
    fill_in "Image", with: @_personnages_de_jeux_video.image
    fill_in "Jouable", with: @_personnages_de_jeux_video.jouable
    fill_in "Muet", with: @_personnages_de_jeux_video.muet
    fill_in "Nom", with: @_personnages_de_jeux_video.nom
    fill_in "Nom alternatif", with: @_personnages_de_jeux_video.nom_alternatif
    fill_in "Nom original", with: @_personnages_de_jeux_video.nom_original
    fill_in "Nom suite", with: @_personnages_de_jeux_video.nom_suite
    fill_in "Statut prop", with: @_personnages_de_jeux_video.statut_prop
    click_on "Create Personnages de jeux video"

    assert_text "Personnages de jeux video was successfully created"
    click_on "Back"
  end

  test "should update Personnages de jeux video" do
    visit _personnages_de_jeux_video_url(@_personnages_de_jeux_video)
    click_on "Edit this personnages de jeux video", match: :first

    fill_in "", with: @_personnages_de_jeux_video.
    fill_in "Personnages de jeux videos doubleur pays", with: @_personnages_de_jeux_video._personnages_de_jeux_videos_doubleur_pays_id
    fill_in "Personnages de jeux videos doubleur people", with: @_personnages_de_jeux_video._personnages_de_jeux_videos_doubleur_people_id
    fill_in "Personnages de jeux videos doubleur role", with: @_personnages_de_jeux_video._personnages_de_jeux_videos_doubleur_role_id
    fill_in "Personnages de jeux videos goodies", with: @_personnages_de_jeux_video._personnages_de_jeux_videos_goodies_id
    fill_in "Personnages de jeux videos jv", with: @_personnages_de_jeux_video._personnages_de_jeux_videos_jv_id
    fill_in "Personnages de jeux videos jv perso", with: @_personnages_de_jeux_video._personnages_de_jeux_videos_jv_perso_id
    fill_in "Personnages de jeux videos perso", with: @_personnages_de_jeux_video._personnages_de_jeux_videos_perso_id
    fill_in "Personnages de jeux videos perso manga", with: @_personnages_de_jeux_video._personnages_de_jeux_videos_perso_manga_id
    fill_in "Personnages de jeux videos perso plus", with: @_personnages_de_jeux_video._personnages_de_jeux_videos_perso_plus_id
    fill_in "Acceptregles", with: @_personnages_de_jeux_video.acceptregles
    fill_in "Comment", with: @_personnages_de_jeux_video.comment
    fill_in "Description", with: @_personnages_de_jeux_video.description
    fill_in "Image", with: @_personnages_de_jeux_video.image
    fill_in "Jouable", with: @_personnages_de_jeux_video.jouable
    fill_in "Muet", with: @_personnages_de_jeux_video.muet
    fill_in "Nom", with: @_personnages_de_jeux_video.nom
    fill_in "Nom alternatif", with: @_personnages_de_jeux_video.nom_alternatif
    fill_in "Nom original", with: @_personnages_de_jeux_video.nom_original
    fill_in "Nom suite", with: @_personnages_de_jeux_video.nom_suite
    fill_in "Statut prop", with: @_personnages_de_jeux_video.statut_prop
    click_on "Update Personnages de jeux video"

    assert_text "Personnages de jeux video was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnages de jeux video" do
    visit _personnages_de_jeux_video_url(@_personnages_de_jeux_video)
    click_on "Destroy this personnages de jeux video", match: :first

    assert_text "Personnages de jeux video was successfully destroyed"
  end
end
