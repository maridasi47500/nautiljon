require "test_helper"

class JeuxVideosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_video = _jeux_videos(:one)
  end

  test "should get index" do
    get _jeux_videos_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_video_url
    assert_response :success
  end

  test "should create _jeux_video" do
    assert_difference("JeuxVideo.count") do
      post _jeux_videos_url, params: { _jeux_video: { _jeux_videos_actualite_id: @_jeux_video._jeux_videos_actualite_id, _jeux_videos_actualite_mini_id: @_jeux_video._jeux_videos_actualite_mini_id, _jeux_videos_am_id: @_jeux_video._jeux_videos_am_id, _jeux_videos_am_plus_id: @_jeux_video._jeux_videos_am_plus_id, _jeux_videos_amv_id: @_jeux_video._jeux_videos_amv_id, _jeux_videos_anime_id: @_jeux_video._jeux_videos_anime_id, _jeux_videos_anime_plus_id: @_jeux_video._jeux_videos_anime_plus_id, _jeux_videos_artbook_id: @_jeux_video._jeux_videos_artbook_id, _jeux_videos_cd_id: @_jeux_video._jeux_videos_cd_id, _jeux_videos_concours_id: @_jeux_video._jeux_videos_concours_id, _jeux_videos_culture_id: @_jeux_video._jeux_videos_culture_id, _jeux_videos_doujin_id: @_jeux_video._jeux_videos_doujin_id, _jeux_videos_drama_id: @_jeux_video._jeux_videos_drama_id, _jeux_videos_drama_plus_id: @_jeux_video._jeux_videos_drama_plus_id, _jeux_videos_dvd_id: @_jeux_video._jeux_videos_dvd_id, _jeux_videos_etat_id: @_jeux_video._jeux_videos_etat_id, _jeux_videos_genres_id: @_jeux_video._jeux_videos_genres_id, _jeux_videos_groupes_id: @_jeux_video._jeux_videos_groupes_id, _jeux_videos_jv_id: @_jeux_video._jeux_videos_jv_id, _jeux_videos_jv_plus_id: @_jeux_video._jeux_videos_jv_plus_id, _jeux_videos_litterature_asiatique_id: @_jeux_video._jeux_videos_litterature_asiatique_id, _jeux_videos_litterature_asiatique_plus_id: @_jeux_video._jeux_videos_litterature_asiatique_plus_id, _jeux_videos_ln_id: @_jeux_video._jeux_videos_ln_id, _jeux_videos_ln_plus_id: @_jeux_video._jeux_videos_ln_plus_id, _jeux_videos_manga_id: @_jeux_video._jeux_videos_manga_id, _jeux_videos_manga_plus_id: @_jeux_video._jeux_videos_manga_plus_id, _jeux_videos_ost_id: @_jeux_video._jeux_videos_ost_id, _jeux_videos_pays_date_id: @_jeux_video._jeux_videos_pays_date_id, _jeux_videos_pays_id: @_jeux_video._jeux_videos_pays_id, _jeux_videos_people_id: @_jeux_video._jeux_videos_people_id, _jeux_videos_plateforme_id: @_jeux_video._jeux_videos_plateforme_id, _jeux_videos_quizz_id: @_jeux_video._jeux_videos_quizz_id, _jeux_videos_sondage_id: @_jeux_video._jeux_videos_sondage_id, _jeux_videos_staff_people_id: @_jeux_video._jeux_videos_staff_people_id, _jeux_videos_staff_role_id: @_jeux_video._jeux_videos_staff_role_id, _jeux_videos_staff_societe_id: @_jeux_video._jeux_videos_staff_societe_id, _jeux_videos_staff_societe_role_id: @_jeux_video._jeux_videos_staff_societe_role_id, _jeux_videos_themes_id: @_jeux_video._jeux_videos_themes_id, _jeux_videos_topic_id: @_jeux_video._jeux_videos_topic_id, _jeux_videos_univers_id: @_jeux_video._jeux_videos_univers_id, acceptregles: @_jeux_video.acceptregles, age: @_jeux_video.age, comment: @_jeux_video.comment, date_fr_aaaa: @_jeux_video.date_fr_aaaa, date_fr_jj: @_jeux_video.date_fr_jj, date_fr_mm: @_jeux_video.date_fr_mm, date_jap_aaaa: @_jeux_video.date_jap_aaaa, date_jap_jj: @_jeux_video.date_jap_jj, date_jap_mm: @_jeux_video.date_jap_mm, date_originale_aaaa: @_jeux_video.date_originale_aaaa, date_originale_jj: @_jeux_video.date_originale_jj, date_originale_mm: @_jeux_video.date_originale_mm, date_us_aaaa: @_jeux_video.date_us_aaaa, date_us_jj: @_jeux_video.date_us_jj, date_us_mm: @_jeux_video.date_us_mm, description: @_jeux_video.description, ean: @_jeux_video.ean, multi: @_jeux_video.multi, multi_nb: @_jeux_video.multi_nb, online: @_jeux_video.online, pochette_asie: @_jeux_video.pochette_asie, pochette_eu: @_jeux_video.pochette_eu, pochette_us: @_jeux_video.pochette_us, prix: @_jeux_video.prix, site: @_jeux_video.site, statut_prop: @_jeux_video.statut_prop, titre_alternatif: @_jeux_video.titre_alternatif, titre_fr: @_jeux_video.titre_fr, titre_original: @_jeux_video.titre_original, titre_original_latin: @_jeux_video.titre_original_latin, titre_us: @_jeux_video.titre_us, youtube: @_jeux_video.youtube } }
    end

    assert_redirected_to _jeux_video_url(JeuxVideo.last)
  end

  test "should show _jeux_video" do
    get _jeux_video_url(@_jeux_video)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_video_url(@_jeux_video)
    assert_response :success
  end

  test "should update _jeux_video" do
    patch _jeux_video_url(@_jeux_video), params: { _jeux_video: { _jeux_videos_actualite_id: @_jeux_video._jeux_videos_actualite_id, _jeux_videos_actualite_mini_id: @_jeux_video._jeux_videos_actualite_mini_id, _jeux_videos_am_id: @_jeux_video._jeux_videos_am_id, _jeux_videos_am_plus_id: @_jeux_video._jeux_videos_am_plus_id, _jeux_videos_amv_id: @_jeux_video._jeux_videos_amv_id, _jeux_videos_anime_id: @_jeux_video._jeux_videos_anime_id, _jeux_videos_anime_plus_id: @_jeux_video._jeux_videos_anime_plus_id, _jeux_videos_artbook_id: @_jeux_video._jeux_videos_artbook_id, _jeux_videos_cd_id: @_jeux_video._jeux_videos_cd_id, _jeux_videos_concours_id: @_jeux_video._jeux_videos_concours_id, _jeux_videos_culture_id: @_jeux_video._jeux_videos_culture_id, _jeux_videos_doujin_id: @_jeux_video._jeux_videos_doujin_id, _jeux_videos_drama_id: @_jeux_video._jeux_videos_drama_id, _jeux_videos_drama_plus_id: @_jeux_video._jeux_videos_drama_plus_id, _jeux_videos_dvd_id: @_jeux_video._jeux_videos_dvd_id, _jeux_videos_etat_id: @_jeux_video._jeux_videos_etat_id, _jeux_videos_genres_id: @_jeux_video._jeux_videos_genres_id, _jeux_videos_groupes_id: @_jeux_video._jeux_videos_groupes_id, _jeux_videos_jv_id: @_jeux_video._jeux_videos_jv_id, _jeux_videos_jv_plus_id: @_jeux_video._jeux_videos_jv_plus_id, _jeux_videos_litterature_asiatique_id: @_jeux_video._jeux_videos_litterature_asiatique_id, _jeux_videos_litterature_asiatique_plus_id: @_jeux_video._jeux_videos_litterature_asiatique_plus_id, _jeux_videos_ln_id: @_jeux_video._jeux_videos_ln_id, _jeux_videos_ln_plus_id: @_jeux_video._jeux_videos_ln_plus_id, _jeux_videos_manga_id: @_jeux_video._jeux_videos_manga_id, _jeux_videos_manga_plus_id: @_jeux_video._jeux_videos_manga_plus_id, _jeux_videos_ost_id: @_jeux_video._jeux_videos_ost_id, _jeux_videos_pays_date_id: @_jeux_video._jeux_videos_pays_date_id, _jeux_videos_pays_id: @_jeux_video._jeux_videos_pays_id, _jeux_videos_people_id: @_jeux_video._jeux_videos_people_id, _jeux_videos_plateforme_id: @_jeux_video._jeux_videos_plateforme_id, _jeux_videos_quizz_id: @_jeux_video._jeux_videos_quizz_id, _jeux_videos_sondage_id: @_jeux_video._jeux_videos_sondage_id, _jeux_videos_staff_people_id: @_jeux_video._jeux_videos_staff_people_id, _jeux_videos_staff_role_id: @_jeux_video._jeux_videos_staff_role_id, _jeux_videos_staff_societe_id: @_jeux_video._jeux_videos_staff_societe_id, _jeux_videos_staff_societe_role_id: @_jeux_video._jeux_videos_staff_societe_role_id, _jeux_videos_themes_id: @_jeux_video._jeux_videos_themes_id, _jeux_videos_topic_id: @_jeux_video._jeux_videos_topic_id, _jeux_videos_univers_id: @_jeux_video._jeux_videos_univers_id, acceptregles: @_jeux_video.acceptregles, age: @_jeux_video.age, comment: @_jeux_video.comment, date_fr_aaaa: @_jeux_video.date_fr_aaaa, date_fr_jj: @_jeux_video.date_fr_jj, date_fr_mm: @_jeux_video.date_fr_mm, date_jap_aaaa: @_jeux_video.date_jap_aaaa, date_jap_jj: @_jeux_video.date_jap_jj, date_jap_mm: @_jeux_video.date_jap_mm, date_originale_aaaa: @_jeux_video.date_originale_aaaa, date_originale_jj: @_jeux_video.date_originale_jj, date_originale_mm: @_jeux_video.date_originale_mm, date_us_aaaa: @_jeux_video.date_us_aaaa, date_us_jj: @_jeux_video.date_us_jj, date_us_mm: @_jeux_video.date_us_mm, description: @_jeux_video.description, ean: @_jeux_video.ean, multi: @_jeux_video.multi, multi_nb: @_jeux_video.multi_nb, online: @_jeux_video.online, pochette_asie: @_jeux_video.pochette_asie, pochette_eu: @_jeux_video.pochette_eu, pochette_us: @_jeux_video.pochette_us, prix: @_jeux_video.prix, site: @_jeux_video.site, statut_prop: @_jeux_video.statut_prop, titre_alternatif: @_jeux_video.titre_alternatif, titre_fr: @_jeux_video.titre_fr, titre_original: @_jeux_video.titre_original, titre_original_latin: @_jeux_video.titre_original_latin, titre_us: @_jeux_video.titre_us, youtube: @_jeux_video.youtube } }
    assert_redirected_to _jeux_video_url(@_jeux_video)
  end

  test "should destroy _jeux_video" do
    assert_difference("JeuxVideo.count", -1) do
      delete _jeux_video_url(@_jeux_video)
    end

    assert_redirected_to _jeux_videos_url
  end
end
