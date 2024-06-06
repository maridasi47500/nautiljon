require "test_helper"

class DoujinshisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshi = _doujinshis(:one)
  end

  test "should get index" do
    get _doujinshis_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshi_url
    assert_response :success
  end

  test "should create _doujinshi" do
    assert_difference("Doujinshi.count") do
      post _doujinshis_url, params: { _doujinshi: { _doujinshis_actualite_id: @_doujinshi._doujinshis_actualite_id, _doujinshis_actualite_mini_id: @_doujinshi._doujinshis_actualite_mini_id, _doujinshis_am_id: @_doujinshi._doujinshis_am_id, _doujinshis_am_plus_id: @_doujinshi._doujinshis_am_plus_id, _doujinshis_anime_id: @_doujinshi._doujinshis_anime_id, _doujinshis_anime_plus_id: @_doujinshi._doujinshis_anime_plus_id, _doujinshis_artbook_id: @_doujinshi._doujinshis_artbook_id, _doujinshis_censure_id: @_doujinshi._doujinshis_censure_id, _doujinshis_conventions_id: @_doujinshi._doujinshis_conventions_id, _doujinshis_culture_id: @_doujinshi._doujinshis_culture_id, _doujinshis_doujinshi_id: @_doujinshi._doujinshis_doujinshi_id, _doujinshis_doujinshi_plus_id: @_doujinshi._doujinshis_doujinshi_plus_id, _doujinshis_drama_id: @_doujinshi._doujinshis_drama_id, _doujinshis_drama_plus_id: @_doujinshi._doujinshis_drama_plus_id, _doujinshis_france_id: @_doujinshi._doujinshis_france_id, _doujinshis_genres_averti_id: @_doujinshi._doujinshis_genres_averti_id, _doujinshis_genres_id: @_doujinshi._doujinshis_genres_id, _doujinshis_gratuit_id: @_doujinshi._doujinshis_gratuit_id, _doujinshis_groupes_id: @_doujinshi._doujinshis_groupes_id, _doujinshis_jv_id: @_doujinshi._doujinshis_jv_id, _doujinshis_jv_perso_id: @_doujinshi._doujinshis_jv_perso_id, _doujinshis_jv_plus_id: @_doujinshi._doujinshis_jv_plus_id, _doujinshis_litterature_asiatique_id: @_doujinshi._doujinshis_litterature_asiatique_id, _doujinshis_litterature_asiatique_plus_id: @_doujinshi._doujinshis_litterature_asiatique_plus_id, _doujinshis_ln_id: @_doujinshi._doujinshis_ln_id, _doujinshis_ln_plus_id: @_doujinshi._doujinshis_ln_plus_id, _doujinshis_manga_id: @_doujinshi._doujinshis_manga_id, _doujinshis_manga_plus_id: @_doujinshi._doujinshis_manga_plus_id, _doujinshis_origine_id: @_doujinshi._doujinshis_origine_id, _doujinshis_pays_id: @_doujinshi._doujinshis_pays_id, _doujinshis_people_id: @_doujinshi._doujinshis_people_id, _doujinshis_perso_id: @_doujinshi._doujinshis_perso_id, _doujinshis_perso_manga_id: @_doujinshi._doujinshis_perso_manga_id, _doujinshis_perso_plus_id: @_doujinshi._doujinshis_perso_plus_id, _doujinshis_public_averti_id: @_doujinshi._doujinshis_public_averti_id, _doujinshis_quizz_id: @_doujinshi._doujinshis_quizz_id, _doujinshis_role_id: @_doujinshi._doujinshis_role_id, _doujinshis_staff_people_id: @_doujinshi._doujinshis_staff_people_id, _doujinshis_themes_id: @_doujinshi._doujinshis_themes_id, _doujinshis_type_id: @_doujinshi._doujinshis_type_id, acceptregles: @_doujinshi.acceptregles, comment: @_doujinshi.comment, date_parution_vf_aaaa: @_doujinshi.date_parution_vf_aaaa, date_parution_vf_jj: @_doujinshi.date_parution_vf_jj, date_parution_vf_mm: @_doujinshi.date_parution_vf_mm, date_parution_vo_aaaa: @_doujinshi.date_parution_vo_aaaa, date_parution_vo_jj: @_doujinshi.date_parution_vo_jj, date_parution_vo_mm: @_doujinshi.date_parution_vo_mm, image: @_doujinshi.image, image_vo: @_doujinshi.image_vo, infos: @_doujinshi.infos, lien_achat: @_doujinshi.lien_achat, nb_page: @_doujinshi.nb_page, numerique: @_doujinshi.numerique, prix: @_doujinshi.prix, resume: @_doujinshi.resume, staff_txt: @_doujinshi.staff_txt, statut_prop: @_doujinshi.statut_prop, tags: @_doujinshi.tags, titre: @_doujinshi.titre, titre_alternatif: @_doujinshi.titre_alternatif, titre_alternatif_suite: @_doujinshi.titre_alternatif_suite, titre_original: @_doujinshi.titre_original, titre_original_latin: @_doujinshi.titre_original_latin } }
    end

    assert_redirected_to _doujinshi_url(Doujinshi.last)
  end

  test "should show _doujinshi" do
    get _doujinshi_url(@_doujinshi)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshi_url(@_doujinshi)
    assert_response :success
  end

  test "should update _doujinshi" do
    patch _doujinshi_url(@_doujinshi), params: { _doujinshi: { _doujinshis_actualite_id: @_doujinshi._doujinshis_actualite_id, _doujinshis_actualite_mini_id: @_doujinshi._doujinshis_actualite_mini_id, _doujinshis_am_id: @_doujinshi._doujinshis_am_id, _doujinshis_am_plus_id: @_doujinshi._doujinshis_am_plus_id, _doujinshis_anime_id: @_doujinshi._doujinshis_anime_id, _doujinshis_anime_plus_id: @_doujinshi._doujinshis_anime_plus_id, _doujinshis_artbook_id: @_doujinshi._doujinshis_artbook_id, _doujinshis_censure_id: @_doujinshi._doujinshis_censure_id, _doujinshis_conventions_id: @_doujinshi._doujinshis_conventions_id, _doujinshis_culture_id: @_doujinshi._doujinshis_culture_id, _doujinshis_doujinshi_id: @_doujinshi._doujinshis_doujinshi_id, _doujinshis_doujinshi_plus_id: @_doujinshi._doujinshis_doujinshi_plus_id, _doujinshis_drama_id: @_doujinshi._doujinshis_drama_id, _doujinshis_drama_plus_id: @_doujinshi._doujinshis_drama_plus_id, _doujinshis_france_id: @_doujinshi._doujinshis_france_id, _doujinshis_genres_averti_id: @_doujinshi._doujinshis_genres_averti_id, _doujinshis_genres_id: @_doujinshi._doujinshis_genres_id, _doujinshis_gratuit_id: @_doujinshi._doujinshis_gratuit_id, _doujinshis_groupes_id: @_doujinshi._doujinshis_groupes_id, _doujinshis_jv_id: @_doujinshi._doujinshis_jv_id, _doujinshis_jv_perso_id: @_doujinshi._doujinshis_jv_perso_id, _doujinshis_jv_plus_id: @_doujinshi._doujinshis_jv_plus_id, _doujinshis_litterature_asiatique_id: @_doujinshi._doujinshis_litterature_asiatique_id, _doujinshis_litterature_asiatique_plus_id: @_doujinshi._doujinshis_litterature_asiatique_plus_id, _doujinshis_ln_id: @_doujinshi._doujinshis_ln_id, _doujinshis_ln_plus_id: @_doujinshi._doujinshis_ln_plus_id, _doujinshis_manga_id: @_doujinshi._doujinshis_manga_id, _doujinshis_manga_plus_id: @_doujinshi._doujinshis_manga_plus_id, _doujinshis_origine_id: @_doujinshi._doujinshis_origine_id, _doujinshis_pays_id: @_doujinshi._doujinshis_pays_id, _doujinshis_people_id: @_doujinshi._doujinshis_people_id, _doujinshis_perso_id: @_doujinshi._doujinshis_perso_id, _doujinshis_perso_manga_id: @_doujinshi._doujinshis_perso_manga_id, _doujinshis_perso_plus_id: @_doujinshi._doujinshis_perso_plus_id, _doujinshis_public_averti_id: @_doujinshi._doujinshis_public_averti_id, _doujinshis_quizz_id: @_doujinshi._doujinshis_quizz_id, _doujinshis_role_id: @_doujinshi._doujinshis_role_id, _doujinshis_staff_people_id: @_doujinshi._doujinshis_staff_people_id, _doujinshis_themes_id: @_doujinshi._doujinshis_themes_id, _doujinshis_type_id: @_doujinshi._doujinshis_type_id, acceptregles: @_doujinshi.acceptregles, comment: @_doujinshi.comment, date_parution_vf_aaaa: @_doujinshi.date_parution_vf_aaaa, date_parution_vf_jj: @_doujinshi.date_parution_vf_jj, date_parution_vf_mm: @_doujinshi.date_parution_vf_mm, date_parution_vo_aaaa: @_doujinshi.date_parution_vo_aaaa, date_parution_vo_jj: @_doujinshi.date_parution_vo_jj, date_parution_vo_mm: @_doujinshi.date_parution_vo_mm, image: @_doujinshi.image, image_vo: @_doujinshi.image_vo, infos: @_doujinshi.infos, lien_achat: @_doujinshi.lien_achat, nb_page: @_doujinshi.nb_page, numerique: @_doujinshi.numerique, prix: @_doujinshi.prix, resume: @_doujinshi.resume, staff_txt: @_doujinshi.staff_txt, statut_prop: @_doujinshi.statut_prop, tags: @_doujinshi.tags, titre: @_doujinshi.titre, titre_alternatif: @_doujinshi.titre_alternatif, titre_alternatif_suite: @_doujinshi.titre_alternatif_suite, titre_original: @_doujinshi.titre_original, titre_original_latin: @_doujinshi.titre_original_latin } }
    assert_redirected_to _doujinshi_url(@_doujinshi)
  end

  test "should destroy _doujinshi" do
    assert_difference("Doujinshi.count", -1) do
      delete _doujinshi_url(@_doujinshi)
    end

    assert_redirected_to _doujinshis_url
  end
end
