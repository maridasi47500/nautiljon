require "test_helper"

class DramasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_drama = _dramas(:one)
  end

  test "should get index" do
    get _dramas_url
    assert_response :success
  end

  test "should get new" do
    get new__drama_url
    assert_response :success
  end

  test "should create _drama" do
    assert_difference("Drama.count") do
      post _dramas_url, params: { _drama: { _dramas_acteurs_id: @_drama._dramas_acteurs_id, _dramas_actualite_id: @_drama._dramas_actualite_id, _dramas_actualite_mini_id: @_drama._dramas_actualite_mini_id, _dramas_am_id: @_drama._dramas_am_id, _dramas_am_plus_id: @_drama._dramas_am_plus_id, _dramas_anime_id: @_drama._dramas_anime_id, _dramas_anime_plus_id: @_drama._dramas_anime_plus_id, _dramas_artbook_id: @_drama._dramas_artbook_id, _dramas_cd_id: @_drama._dramas_cd_id, _dramas_culture_id: @_drama._dramas_culture_id, _dramas_doujin_id: @_drama._dramas_doujin_id, _dramas_drama_id: @_drama._dramas_drama_id, _dramas_drama_plus_id: @_drama._dramas_drama_plus_id, _dramas_dvd_id: @_drama._dramas_dvd_id, _dramas_editeurs_vf_id: @_drama._dramas_editeurs_vf_id, _dramas_editeurs_vf_role_id: @_drama._dramas_editeurs_vf_role_id, _dramas_emission_tv_id: @_drama._dramas_emission_tv_id, _dramas_emission_tv_plus_id: @_drama._dramas_emission_tv_plus_id, _dramas_encours_id: @_drama._dramas_encours_id, _dramas_generiques_clip_id: @_drama._dramas_generiques_clip_id, _dramas_generiques_parole_id: @_drama._dramas_generiques_parole_id, _dramas_generiques_people2_id: @_drama._dramas_generiques_people2_id, _dramas_generiques_people_id: @_drama._dramas_generiques_people_id, _dramas_generiques_type_id: @_drama._dramas_generiques_type_id, _dramas_genres_id: @_drama._dramas_genres_id, _dramas_groupes_id: @_drama._dramas_groupes_id, _dramas_jv_id: @_drama._dramas_jv_id, _dramas_jv_plus_id: @_drama._dramas_jv_plus_id, _dramas_litterature_asiatique_id: @_drama._dramas_litterature_asiatique_id, _dramas_litterature_asiatique_plus_id: @_drama._dramas_litterature_asiatique_plus_id, _dramas_ln_id: @_drama._dramas_ln_id, _dramas_ln_plus_id: @_drama._dramas_ln_plus_id, _dramas_manga_id: @_drama._dramas_manga_id, _dramas_manga_plus_id: @_drama._dramas_manga_plus_id, _dramas_origine_id: @_drama._dramas_origine_id, _dramas_ost_id: @_drama._dramas_ost_id, _dramas_pays_id: @_drama._dramas_pays_id, _dramas_programme_id: @_drama._dramas_programme_id, _dramas_societe_people_id: @_drama._dramas_societe_people_id, _dramas_societe_role_id: @_drama._dramas_societe_role_id, _dramas_staff_people_id: @_drama._dramas_staff_people_id, _dramas_staff_role_id: @_drama._dramas_staff_role_id, _dramas_themes_id: @_drama._dramas_themes_id, _dramas_type_id: @_drama._dramas_type_id, _dramas_univers_id: @_drama._dramas_univers_id, acceptregles: @_drama.acceptregles, age: @_drama.age, comment: @_drama.comment, date_debut_aaaa: @_drama.date_debut_aaaa, date_debut_jj: @_drama.date_debut_jj, date_debut_mm: @_drama.date_debut_mm, date_debut_simulcast_aaaa: @_drama.date_debut_simulcast_aaaa, date_debut_simulcast_jj: @_drama.date_debut_simulcast_jj, date_debut_simulcast_mm: @_drama.date_debut_simulcast_mm, date_fin_aaaa: @_drama.date_fin_aaaa, date_fin_jj: @_drama.date_fin_jj, date_fin_mm: @_drama.date_fin_mm, date_vf_aaaa: @_drama.date_vf_aaaa, date_vf_jj: @_drama.date_vf_jj, date_vf_mm: @_drama.date_vf_mm, duree: @_drama.duree, episodes: @_drama.episodes, image: @_drama.image, infos: @_drama.infos, licencie: @_drama.licencie, nb_ep: @_drama.nb_ep, site: @_drama.site, site2: @_drama.site2, statut_prop: @_drama.statut_prop, synopsis: @_drama.synopsis, titre: @_drama.titre, titre_alternatif: @_drama.titre_alternatif, titre_alternatif_suite: @_drama.titre_alternatif_suite, titre_original: @_drama.titre_original, titre_original_latin: @_drama.titre_original_latin, total_ep_inconnu: @_drama.total_ep_inconnu, webdrama: @_drama.webdrama, youtube: @_drama.youtube } }
    end

    assert_redirected_to _drama_url(Drama.last)
  end

  test "should show _drama" do
    get _drama_url(@_drama)
    assert_response :success
  end

  test "should get edit" do
    get edit__drama_url(@_drama)
    assert_response :success
  end

  test "should update _drama" do
    patch _drama_url(@_drama), params: { _drama: { _dramas_acteurs_id: @_drama._dramas_acteurs_id, _dramas_actualite_id: @_drama._dramas_actualite_id, _dramas_actualite_mini_id: @_drama._dramas_actualite_mini_id, _dramas_am_id: @_drama._dramas_am_id, _dramas_am_plus_id: @_drama._dramas_am_plus_id, _dramas_anime_id: @_drama._dramas_anime_id, _dramas_anime_plus_id: @_drama._dramas_anime_plus_id, _dramas_artbook_id: @_drama._dramas_artbook_id, _dramas_cd_id: @_drama._dramas_cd_id, _dramas_culture_id: @_drama._dramas_culture_id, _dramas_doujin_id: @_drama._dramas_doujin_id, _dramas_drama_id: @_drama._dramas_drama_id, _dramas_drama_plus_id: @_drama._dramas_drama_plus_id, _dramas_dvd_id: @_drama._dramas_dvd_id, _dramas_editeurs_vf_id: @_drama._dramas_editeurs_vf_id, _dramas_editeurs_vf_role_id: @_drama._dramas_editeurs_vf_role_id, _dramas_emission_tv_id: @_drama._dramas_emission_tv_id, _dramas_emission_tv_plus_id: @_drama._dramas_emission_tv_plus_id, _dramas_encours_id: @_drama._dramas_encours_id, _dramas_generiques_clip_id: @_drama._dramas_generiques_clip_id, _dramas_generiques_parole_id: @_drama._dramas_generiques_parole_id, _dramas_generiques_people2_id: @_drama._dramas_generiques_people2_id, _dramas_generiques_people_id: @_drama._dramas_generiques_people_id, _dramas_generiques_type_id: @_drama._dramas_generiques_type_id, _dramas_genres_id: @_drama._dramas_genres_id, _dramas_groupes_id: @_drama._dramas_groupes_id, _dramas_jv_id: @_drama._dramas_jv_id, _dramas_jv_plus_id: @_drama._dramas_jv_plus_id, _dramas_litterature_asiatique_id: @_drama._dramas_litterature_asiatique_id, _dramas_litterature_asiatique_plus_id: @_drama._dramas_litterature_asiatique_plus_id, _dramas_ln_id: @_drama._dramas_ln_id, _dramas_ln_plus_id: @_drama._dramas_ln_plus_id, _dramas_manga_id: @_drama._dramas_manga_id, _dramas_manga_plus_id: @_drama._dramas_manga_plus_id, _dramas_origine_id: @_drama._dramas_origine_id, _dramas_ost_id: @_drama._dramas_ost_id, _dramas_pays_id: @_drama._dramas_pays_id, _dramas_programme_id: @_drama._dramas_programme_id, _dramas_societe_people_id: @_drama._dramas_societe_people_id, _dramas_societe_role_id: @_drama._dramas_societe_role_id, _dramas_staff_people_id: @_drama._dramas_staff_people_id, _dramas_staff_role_id: @_drama._dramas_staff_role_id, _dramas_themes_id: @_drama._dramas_themes_id, _dramas_type_id: @_drama._dramas_type_id, _dramas_univers_id: @_drama._dramas_univers_id, acceptregles: @_drama.acceptregles, age: @_drama.age, comment: @_drama.comment, date_debut_aaaa: @_drama.date_debut_aaaa, date_debut_jj: @_drama.date_debut_jj, date_debut_mm: @_drama.date_debut_mm, date_debut_simulcast_aaaa: @_drama.date_debut_simulcast_aaaa, date_debut_simulcast_jj: @_drama.date_debut_simulcast_jj, date_debut_simulcast_mm: @_drama.date_debut_simulcast_mm, date_fin_aaaa: @_drama.date_fin_aaaa, date_fin_jj: @_drama.date_fin_jj, date_fin_mm: @_drama.date_fin_mm, date_vf_aaaa: @_drama.date_vf_aaaa, date_vf_jj: @_drama.date_vf_jj, date_vf_mm: @_drama.date_vf_mm, duree: @_drama.duree, episodes: @_drama.episodes, image: @_drama.image, infos: @_drama.infos, licencie: @_drama.licencie, nb_ep: @_drama.nb_ep, site: @_drama.site, site2: @_drama.site2, statut_prop: @_drama.statut_prop, synopsis: @_drama.synopsis, titre: @_drama.titre, titre_alternatif: @_drama.titre_alternatif, titre_alternatif_suite: @_drama.titre_alternatif_suite, titre_original: @_drama.titre_original, titre_original_latin: @_drama.titre_original_latin, total_ep_inconnu: @_drama.total_ep_inconnu, webdrama: @_drama.webdrama, youtube: @_drama.youtube } }
    assert_redirected_to _drama_url(@_drama)
  end

  test "should destroy _drama" do
    assert_difference("Drama.count", -1) do
      delete _drama_url(@_drama)
    end

    assert_redirected_to _dramas_url
  end
end
