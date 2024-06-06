require "application_system_test_case"

class GeneriqueDeJeuVideosTest < ApplicationSystemTestCase
  setup do
    @_generique_de_jeu_video = _generique_de_jeu_videos(:one)
  end

  test "visiting the index" do
    visit _generique_de_jeu_videos_url
    assert_selector "h1", text: "Generique de jeu videos"
  end

  test "should create generique de jeu video" do
    visit _generique_de_jeu_videos_url
    click_on "New generique de jeu video"

    fill_in "Generique de jeu videos jv generic", with: @_generique_de_jeu_video._generique_de_jeu_videos_jv_generic_id
    fill_in "Generique de jeu videos jv", with: @_generique_de_jeu_video._generique_de_jeu_videos_jv_id
    fill_in "Generique de jeu videos staff people", with: @_generique_de_jeu_video._generique_de_jeu_videos_staff_people_id
    fill_in "Generique de jeu videos staff role", with: @_generique_de_jeu_video._generique_de_jeu_videos_staff_role_id
    fill_in "Generique de jeu videos type", with: @_generique_de_jeu_video._generique_de_jeu_videos_type_id
    fill_in "Acceptregles", with: @_generique_de_jeu_video.acceptregles
    fill_in "Comment", with: @_generique_de_jeu_video.comment
    fill_in "Date aaaa", with: @_generique_de_jeu_video.date_aaaa
    fill_in "Date jj", with: @_generique_de_jeu_video.date_jj
    fill_in "Date mm", with: @_generique_de_jeu_video.date_mm
    fill_in "Description", with: @_generique_de_jeu_video.description
    fill_in "Instrumental", with: @_generique_de_jeu_video.instrumental
    fill_in "Membre show", with: @_generique_de_jeu_video.membre_show
    fill_in "Number", with: @_generique_de_jeu_video.number
    fill_in "Paroles", with: @_generique_de_jeu_video.paroles
    fill_in "Paroles trad", with: @_generique_de_jeu_video.paroles_trad
    fill_in "Statut prop", with: @_generique_de_jeu_video.statut_prop
    fill_in "Titre", with: @_generique_de_jeu_video.titre
    fill_in "Titre original", with: @_generique_de_jeu_video.titre_original
    fill_in "Youtube", with: @_generique_de_jeu_video.youtube
    click_on "Create Generique de jeu video"

    assert_text "Generique de jeu video was successfully created"
    click_on "Back"
  end

  test "should update Generique de jeu video" do
    visit _generique_de_jeu_video_url(@_generique_de_jeu_video)
    click_on "Edit this generique de jeu video", match: :first

    fill_in "Generique de jeu videos jv generic", with: @_generique_de_jeu_video._generique_de_jeu_videos_jv_generic_id
    fill_in "Generique de jeu videos jv", with: @_generique_de_jeu_video._generique_de_jeu_videos_jv_id
    fill_in "Generique de jeu videos staff people", with: @_generique_de_jeu_video._generique_de_jeu_videos_staff_people_id
    fill_in "Generique de jeu videos staff role", with: @_generique_de_jeu_video._generique_de_jeu_videos_staff_role_id
    fill_in "Generique de jeu videos type", with: @_generique_de_jeu_video._generique_de_jeu_videos_type_id
    fill_in "Acceptregles", with: @_generique_de_jeu_video.acceptregles
    fill_in "Comment", with: @_generique_de_jeu_video.comment
    fill_in "Date aaaa", with: @_generique_de_jeu_video.date_aaaa
    fill_in "Date jj", with: @_generique_de_jeu_video.date_jj
    fill_in "Date mm", with: @_generique_de_jeu_video.date_mm
    fill_in "Description", with: @_generique_de_jeu_video.description
    fill_in "Instrumental", with: @_generique_de_jeu_video.instrumental
    fill_in "Membre show", with: @_generique_de_jeu_video.membre_show
    fill_in "Number", with: @_generique_de_jeu_video.number
    fill_in "Paroles", with: @_generique_de_jeu_video.paroles
    fill_in "Paroles trad", with: @_generique_de_jeu_video.paroles_trad
    fill_in "Statut prop", with: @_generique_de_jeu_video.statut_prop
    fill_in "Titre", with: @_generique_de_jeu_video.titre
    fill_in "Titre original", with: @_generique_de_jeu_video.titre_original
    fill_in "Youtube", with: @_generique_de_jeu_video.youtube
    click_on "Update Generique de jeu video"

    assert_text "Generique de jeu video was successfully updated"
    click_on "Back"
  end

  test "should destroy Generique de jeu video" do
    visit _generique_de_jeu_video_url(@_generique_de_jeu_video)
    click_on "Destroy this generique de jeu video", match: :first

    assert_text "Generique de jeu video was successfully destroyed"
  end
end
