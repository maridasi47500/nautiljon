require "application_system_test_case"

class JeuxVideosTest < ApplicationSystemTestCase
  setup do
    @_jeux_video = _jeux_videos(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_url
    assert_selector "h1", text: "Jeux videos"
  end

  test "should create jeux video" do
    visit _jeux_videos_url
    click_on "New jeux video"

    fill_in "Jeux videos actualite", with: @_jeux_video._jeux_videos_actualite_id
    fill_in "Jeux videos actualite mini", with: @_jeux_video._jeux_videos_actualite_mini_id
    fill_in "Jeux videos am", with: @_jeux_video._jeux_videos_am_id
    fill_in "Jeux videos am plus", with: @_jeux_video._jeux_videos_am_plus_id
    fill_in "Jeux videos amv", with: @_jeux_video._jeux_videos_amv_id
    fill_in "Jeux videos anime", with: @_jeux_video._jeux_videos_anime_id
    fill_in "Jeux videos anime plus", with: @_jeux_video._jeux_videos_anime_plus_id
    fill_in "Jeux videos artbook", with: @_jeux_video._jeux_videos_artbook_id
    fill_in "Jeux videos cd", with: @_jeux_video._jeux_videos_cd_id
    fill_in "Jeux videos concours", with: @_jeux_video._jeux_videos_concours_id
    fill_in "Jeux videos culture", with: @_jeux_video._jeux_videos_culture_id
    fill_in "Jeux videos doujin", with: @_jeux_video._jeux_videos_doujin_id
    fill_in "Jeux videos drama", with: @_jeux_video._jeux_videos_drama_id
    fill_in "Jeux videos drama plus", with: @_jeux_video._jeux_videos_drama_plus_id
    fill_in "Jeux videos dvd", with: @_jeux_video._jeux_videos_dvd_id
    fill_in "Jeux videos etat", with: @_jeux_video._jeux_videos_etat_id
    fill_in "Jeux videos genres", with: @_jeux_video._jeux_videos_genres_id
    fill_in "Jeux videos groupes", with: @_jeux_video._jeux_videos_groupes_id
    fill_in "Jeux videos jv", with: @_jeux_video._jeux_videos_jv_id
    fill_in "Jeux videos jv plus", with: @_jeux_video._jeux_videos_jv_plus_id
    fill_in "Jeux videos litterature asiatique", with: @_jeux_video._jeux_videos_litterature_asiatique_id
    fill_in "Jeux videos litterature asiatique plus", with: @_jeux_video._jeux_videos_litterature_asiatique_plus_id
    fill_in "Jeux videos ln", with: @_jeux_video._jeux_videos_ln_id
    fill_in "Jeux videos ln plus", with: @_jeux_video._jeux_videos_ln_plus_id
    fill_in "Jeux videos manga", with: @_jeux_video._jeux_videos_manga_id
    fill_in "Jeux videos manga plus", with: @_jeux_video._jeux_videos_manga_plus_id
    fill_in "Jeux videos ost", with: @_jeux_video._jeux_videos_ost_id
    fill_in "Jeux videos pays date", with: @_jeux_video._jeux_videos_pays_date_id
    fill_in "Jeux videos pays", with: @_jeux_video._jeux_videos_pays_id
    fill_in "Jeux videos people", with: @_jeux_video._jeux_videos_people_id
    fill_in "Jeux videos plateforme", with: @_jeux_video._jeux_videos_plateforme_id
    fill_in "Jeux videos quizz", with: @_jeux_video._jeux_videos_quizz_id
    fill_in "Jeux videos sondage", with: @_jeux_video._jeux_videos_sondage_id
    fill_in "Jeux videos staff people", with: @_jeux_video._jeux_videos_staff_people_id
    fill_in "Jeux videos staff role", with: @_jeux_video._jeux_videos_staff_role_id
    fill_in "Jeux videos staff societe", with: @_jeux_video._jeux_videos_staff_societe_id
    fill_in "Jeux videos staff societe role", with: @_jeux_video._jeux_videos_staff_societe_role_id
    fill_in "Jeux videos themes", with: @_jeux_video._jeux_videos_themes_id
    fill_in "Jeux videos topic", with: @_jeux_video._jeux_videos_topic_id
    fill_in "Jeux videos univers", with: @_jeux_video._jeux_videos_univers_id
    fill_in "Acceptregles", with: @_jeux_video.acceptregles
    fill_in "Age", with: @_jeux_video.age
    fill_in "Comment", with: @_jeux_video.comment
    fill_in "Date fr aaaa", with: @_jeux_video.date_fr_aaaa
    fill_in "Date fr jj", with: @_jeux_video.date_fr_jj
    fill_in "Date fr mm", with: @_jeux_video.date_fr_mm
    fill_in "Date jap aaaa", with: @_jeux_video.date_jap_aaaa
    fill_in "Date jap jj", with: @_jeux_video.date_jap_jj
    fill_in "Date jap mm", with: @_jeux_video.date_jap_mm
    fill_in "Date originale aaaa", with: @_jeux_video.date_originale_aaaa
    fill_in "Date originale jj", with: @_jeux_video.date_originale_jj
    fill_in "Date originale mm", with: @_jeux_video.date_originale_mm
    fill_in "Date us aaaa", with: @_jeux_video.date_us_aaaa
    fill_in "Date us jj", with: @_jeux_video.date_us_jj
    fill_in "Date us mm", with: @_jeux_video.date_us_mm
    fill_in "Description", with: @_jeux_video.description
    fill_in "Ean", with: @_jeux_video.ean
    fill_in "Multi", with: @_jeux_video.multi
    fill_in "Multi nb", with: @_jeux_video.multi_nb
    fill_in "Online", with: @_jeux_video.online
    fill_in "Pochette asie", with: @_jeux_video.pochette_asie
    fill_in "Pochette eu", with: @_jeux_video.pochette_eu
    fill_in "Pochette us", with: @_jeux_video.pochette_us
    fill_in "Prix", with: @_jeux_video.prix
    fill_in "Site", with: @_jeux_video.site
    fill_in "Statut prop", with: @_jeux_video.statut_prop
    fill_in "Titre alternatif", with: @_jeux_video.titre_alternatif
    fill_in "Titre fr", with: @_jeux_video.titre_fr
    fill_in "Titre original", with: @_jeux_video.titre_original
    fill_in "Titre original latin", with: @_jeux_video.titre_original_latin
    fill_in "Titre us", with: @_jeux_video.titre_us
    fill_in "Youtube", with: @_jeux_video.youtube
    click_on "Create Jeux video"

    assert_text "Jeux video was successfully created"
    click_on "Back"
  end

  test "should update Jeux video" do
    visit _jeux_video_url(@_jeux_video)
    click_on "Edit this jeux video", match: :first

    fill_in "Jeux videos actualite", with: @_jeux_video._jeux_videos_actualite_id
    fill_in "Jeux videos actualite mini", with: @_jeux_video._jeux_videos_actualite_mini_id
    fill_in "Jeux videos am", with: @_jeux_video._jeux_videos_am_id
    fill_in "Jeux videos am plus", with: @_jeux_video._jeux_videos_am_plus_id
    fill_in "Jeux videos amv", with: @_jeux_video._jeux_videos_amv_id
    fill_in "Jeux videos anime", with: @_jeux_video._jeux_videos_anime_id
    fill_in "Jeux videos anime plus", with: @_jeux_video._jeux_videos_anime_plus_id
    fill_in "Jeux videos artbook", with: @_jeux_video._jeux_videos_artbook_id
    fill_in "Jeux videos cd", with: @_jeux_video._jeux_videos_cd_id
    fill_in "Jeux videos concours", with: @_jeux_video._jeux_videos_concours_id
    fill_in "Jeux videos culture", with: @_jeux_video._jeux_videos_culture_id
    fill_in "Jeux videos doujin", with: @_jeux_video._jeux_videos_doujin_id
    fill_in "Jeux videos drama", with: @_jeux_video._jeux_videos_drama_id
    fill_in "Jeux videos drama plus", with: @_jeux_video._jeux_videos_drama_plus_id
    fill_in "Jeux videos dvd", with: @_jeux_video._jeux_videos_dvd_id
    fill_in "Jeux videos etat", with: @_jeux_video._jeux_videos_etat_id
    fill_in "Jeux videos genres", with: @_jeux_video._jeux_videos_genres_id
    fill_in "Jeux videos groupes", with: @_jeux_video._jeux_videos_groupes_id
    fill_in "Jeux videos jv", with: @_jeux_video._jeux_videos_jv_id
    fill_in "Jeux videos jv plus", with: @_jeux_video._jeux_videos_jv_plus_id
    fill_in "Jeux videos litterature asiatique", with: @_jeux_video._jeux_videos_litterature_asiatique_id
    fill_in "Jeux videos litterature asiatique plus", with: @_jeux_video._jeux_videos_litterature_asiatique_plus_id
    fill_in "Jeux videos ln", with: @_jeux_video._jeux_videos_ln_id
    fill_in "Jeux videos ln plus", with: @_jeux_video._jeux_videos_ln_plus_id
    fill_in "Jeux videos manga", with: @_jeux_video._jeux_videos_manga_id
    fill_in "Jeux videos manga plus", with: @_jeux_video._jeux_videos_manga_plus_id
    fill_in "Jeux videos ost", with: @_jeux_video._jeux_videos_ost_id
    fill_in "Jeux videos pays date", with: @_jeux_video._jeux_videos_pays_date_id
    fill_in "Jeux videos pays", with: @_jeux_video._jeux_videos_pays_id
    fill_in "Jeux videos people", with: @_jeux_video._jeux_videos_people_id
    fill_in "Jeux videos plateforme", with: @_jeux_video._jeux_videos_plateforme_id
    fill_in "Jeux videos quizz", with: @_jeux_video._jeux_videos_quizz_id
    fill_in "Jeux videos sondage", with: @_jeux_video._jeux_videos_sondage_id
    fill_in "Jeux videos staff people", with: @_jeux_video._jeux_videos_staff_people_id
    fill_in "Jeux videos staff role", with: @_jeux_video._jeux_videos_staff_role_id
    fill_in "Jeux videos staff societe", with: @_jeux_video._jeux_videos_staff_societe_id
    fill_in "Jeux videos staff societe role", with: @_jeux_video._jeux_videos_staff_societe_role_id
    fill_in "Jeux videos themes", with: @_jeux_video._jeux_videos_themes_id
    fill_in "Jeux videos topic", with: @_jeux_video._jeux_videos_topic_id
    fill_in "Jeux videos univers", with: @_jeux_video._jeux_videos_univers_id
    fill_in "Acceptregles", with: @_jeux_video.acceptregles
    fill_in "Age", with: @_jeux_video.age
    fill_in "Comment", with: @_jeux_video.comment
    fill_in "Date fr aaaa", with: @_jeux_video.date_fr_aaaa
    fill_in "Date fr jj", with: @_jeux_video.date_fr_jj
    fill_in "Date fr mm", with: @_jeux_video.date_fr_mm
    fill_in "Date jap aaaa", with: @_jeux_video.date_jap_aaaa
    fill_in "Date jap jj", with: @_jeux_video.date_jap_jj
    fill_in "Date jap mm", with: @_jeux_video.date_jap_mm
    fill_in "Date originale aaaa", with: @_jeux_video.date_originale_aaaa
    fill_in "Date originale jj", with: @_jeux_video.date_originale_jj
    fill_in "Date originale mm", with: @_jeux_video.date_originale_mm
    fill_in "Date us aaaa", with: @_jeux_video.date_us_aaaa
    fill_in "Date us jj", with: @_jeux_video.date_us_jj
    fill_in "Date us mm", with: @_jeux_video.date_us_mm
    fill_in "Description", with: @_jeux_video.description
    fill_in "Ean", with: @_jeux_video.ean
    fill_in "Multi", with: @_jeux_video.multi
    fill_in "Multi nb", with: @_jeux_video.multi_nb
    fill_in "Online", with: @_jeux_video.online
    fill_in "Pochette asie", with: @_jeux_video.pochette_asie
    fill_in "Pochette eu", with: @_jeux_video.pochette_eu
    fill_in "Pochette us", with: @_jeux_video.pochette_us
    fill_in "Prix", with: @_jeux_video.prix
    fill_in "Site", with: @_jeux_video.site
    fill_in "Statut prop", with: @_jeux_video.statut_prop
    fill_in "Titre alternatif", with: @_jeux_video.titre_alternatif
    fill_in "Titre fr", with: @_jeux_video.titre_fr
    fill_in "Titre original", with: @_jeux_video.titre_original
    fill_in "Titre original latin", with: @_jeux_video.titre_original_latin
    fill_in "Titre us", with: @_jeux_video.titre_us
    fill_in "Youtube", with: @_jeux_video.youtube
    click_on "Update Jeux video"

    assert_text "Jeux video was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux video" do
    visit _jeux_video_url(@_jeux_video)
    click_on "Destroy this jeux video", match: :first

    assert_text "Jeux video was successfully destroyed"
  end
end
