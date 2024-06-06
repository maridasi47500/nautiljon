require "test_helper"

class AnimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anime = animes(:one)
  end

  test "should get index" do
    get animes_url
    assert_response :success
  end

  test "should get new" do
    get new_anime_url
    assert_response :success
  end

  test "should create anime" do
    assert_difference("Anime.count") do
      post animes_url, params: { anime: { acceptregles: @anime.acceptregles, age: @anime.age, animes_actualite_id: @anime.animes_actualite_id, animes_actualite_mini_id: @anime.animes_actualite_mini_id, animes_am_id: @anime.animes_am_id, animes_am_plus_id: @anime.animes_am_plus_id, animes_amv_id: @anime.animes_amv_id, animes_anime_id: @anime.animes_anime_id, animes_anime_plus_id: @anime.animes_anime_plus_id, animes_artbook_id: @anime.animes_artbook_id, animes_cd_id: @anime.animes_cd_id, animes_cinema_id: @anime.animes_cinema_id, animes_culture_id: @anime.animes_culture_id, animes_doujin_id: @anime.animes_doujin_id, animes_drama_id: @anime.animes_drama_id, animes_drama_plus_id: @anime.animes_drama_plus_id, animes_dvd_id: @anime.animes_dvd_id, animes_editeurs_vf_id: @anime.animes_editeurs_vf_id, animes_editeurs_vf_role_id: @anime.animes_editeurs_vf_role_id, animes_encours_id: @anime.animes_encours_id, animes_format_id: @anime.animes_format_id, animes_genres_id: @anime.animes_genres_id, animes_groupes_id: @anime.animes_groupes_id, animes_jv_id: @anime.animes_jv_id, animes_jv_plus_id: @anime.animes_jv_plus_id, animes_litterature_asiatique_id: @anime.animes_litterature_asiatique_id, animes_litterature_asiatique_plus_id: @anime.animes_litterature_asiatique_plus_id, animes_ln_id: @anime.animes_ln_id, animes_ln_plus_id: @anime.animes_ln_plus_id, animes_manga_id: @anime.animes_manga_id, animes_manga_plus_id: @anime.animes_manga_plus_id, animes_origine_id: @anime.animes_origine_id, animes_ost_id: @anime.animes_ost_id, animes_pays_id: @anime.animes_pays_id, animes_people_id: @anime.animes_people_id, animes_photobook_id: @anime.animes_photobook_id, animes_public_averti_id: @anime.animes_public_averti_id, animes_quizz_id: @anime.animes_quizz_id, animes_societe_people_id: @anime.animes_societe_people_id, animes_societe_role_id: @anime.animes_societe_role_id, animes_staff_people_id: @anime.animes_staff_people_id, animes_staff_role_id: @anime.animes_staff_role_id, animes_themes_id: @anime.animes_themes_id, animes_topic_id: @anime.animes_topic_id, comment: @anime.comment, date_debut_aaaa: @anime.date_debut_aaaa, date_debut_jj: @anime.date_debut_jj, date_debut_mm: @anime.date_debut_mm, date_debut_simulcast_aaaa: @anime.date_debut_simulcast_aaaa, date_debut_simulcast_jj: @anime.date_debut_simulcast_jj, date_debut_simulcast_mm: @anime.date_debut_simulcast_mm, date_fin_aaaa: @anime.date_fin_aaaa, date_fin_jj: @anime.date_fin_jj, date_fin_mm: @anime.date_fin_mm, date_vf_aaaa: @anime.date_vf_aaaa, date_vf_jj: @anime.date_vf_jj, date_vf_mm: @anime.date_vf_mm, description: @anime.description, duree: @anime.duree, image: @anime.image, image_francaise: @anime.image_francaise, licencie: @anime.licencie, nb_ep: @anime.nb_ep, site: @anime.site, site2: @anime.site2, statut_prop: @anime.statut_prop, titre: @anime.titre, titre_alternatif: @anime.titre_alternatif, titre_alternatif_suite: @anime.titre_alternatif_suite, titre_original: @anime.titre_original, titre_original_latin: @anime.titre_original_latin, total_ep_inconnu: @anime.total_ep_inconnu, webanime: @anime.webanime, youtube: @anime.youtube } }
    end

    assert_redirected_to anime_url(Anime.last)
  end

  test "should show anime" do
    get anime_url(@anime)
    assert_response :success
  end

  test "should get edit" do
    get edit_anime_url(@anime)
    assert_response :success
  end

  test "should update anime" do
    patch anime_url(@anime), params: { anime: { acceptregles: @anime.acceptregles, age: @anime.age, animes_actualite_id: @anime.animes_actualite_id, animes_actualite_mini_id: @anime.animes_actualite_mini_id, animes_am_id: @anime.animes_am_id, animes_am_plus_id: @anime.animes_am_plus_id, animes_amv_id: @anime.animes_amv_id, animes_anime_id: @anime.animes_anime_id, animes_anime_plus_id: @anime.animes_anime_plus_id, animes_artbook_id: @anime.animes_artbook_id, animes_cd_id: @anime.animes_cd_id, animes_cinema_id: @anime.animes_cinema_id, animes_culture_id: @anime.animes_culture_id, animes_doujin_id: @anime.animes_doujin_id, animes_drama_id: @anime.animes_drama_id, animes_drama_plus_id: @anime.animes_drama_plus_id, animes_dvd_id: @anime.animes_dvd_id, animes_editeurs_vf_id: @anime.animes_editeurs_vf_id, animes_editeurs_vf_role_id: @anime.animes_editeurs_vf_role_id, animes_encours_id: @anime.animes_encours_id, animes_format_id: @anime.animes_format_id, animes_genres_id: @anime.animes_genres_id, animes_groupes_id: @anime.animes_groupes_id, animes_jv_id: @anime.animes_jv_id, animes_jv_plus_id: @anime.animes_jv_plus_id, animes_litterature_asiatique_id: @anime.animes_litterature_asiatique_id, animes_litterature_asiatique_plus_id: @anime.animes_litterature_asiatique_plus_id, animes_ln_id: @anime.animes_ln_id, animes_ln_plus_id: @anime.animes_ln_plus_id, animes_manga_id: @anime.animes_manga_id, animes_manga_plus_id: @anime.animes_manga_plus_id, animes_origine_id: @anime.animes_origine_id, animes_ost_id: @anime.animes_ost_id, animes_pays_id: @anime.animes_pays_id, animes_people_id: @anime.animes_people_id, animes_photobook_id: @anime.animes_photobook_id, animes_public_averti_id: @anime.animes_public_averti_id, animes_quizz_id: @anime.animes_quizz_id, animes_societe_people_id: @anime.animes_societe_people_id, animes_societe_role_id: @anime.animes_societe_role_id, animes_staff_people_id: @anime.animes_staff_people_id, animes_staff_role_id: @anime.animes_staff_role_id, animes_themes_id: @anime.animes_themes_id, animes_topic_id: @anime.animes_topic_id, comment: @anime.comment, date_debut_aaaa: @anime.date_debut_aaaa, date_debut_jj: @anime.date_debut_jj, date_debut_mm: @anime.date_debut_mm, date_debut_simulcast_aaaa: @anime.date_debut_simulcast_aaaa, date_debut_simulcast_jj: @anime.date_debut_simulcast_jj, date_debut_simulcast_mm: @anime.date_debut_simulcast_mm, date_fin_aaaa: @anime.date_fin_aaaa, date_fin_jj: @anime.date_fin_jj, date_fin_mm: @anime.date_fin_mm, date_vf_aaaa: @anime.date_vf_aaaa, date_vf_jj: @anime.date_vf_jj, date_vf_mm: @anime.date_vf_mm, description: @anime.description, duree: @anime.duree, image: @anime.image, image_francaise: @anime.image_francaise, licencie: @anime.licencie, nb_ep: @anime.nb_ep, site: @anime.site, site2: @anime.site2, statut_prop: @anime.statut_prop, titre: @anime.titre, titre_alternatif: @anime.titre_alternatif, titre_alternatif_suite: @anime.titre_alternatif_suite, titre_original: @anime.titre_original, titre_original_latin: @anime.titre_original_latin, total_ep_inconnu: @anime.total_ep_inconnu, webanime: @anime.webanime, youtube: @anime.youtube } }
    assert_redirected_to anime_url(@anime)
  end

  test "should destroy anime" do
    assert_difference("Anime.count", -1) do
      delete anime_url(@anime)
    end

    assert_redirected_to animes_url
  end
end
