require "test_helper"

class MangasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_manga = _mangas(:one)
  end

  test "should get index" do
    get _mangas_url
    assert_response :success
  end

  test "should get new" do
    get new__manga_url
    assert_response :success
  end

  test "should create _manga" do
    assert_difference("Manga.count") do
      post _mangas_url, params: { _manga: { _mangas_actualite_id: @_manga._mangas_actualite_id, _mangas_actualite_mini_id: @_manga._mangas_actualite_mini_id, _mangas_am_id: @_manga._mangas_am_id, _mangas_am_plus_id: @_manga._mangas_am_plus_id, _mangas_anime_id: @_manga._mangas_anime_id, _mangas_anime_plus_id: @_manga._mangas_anime_plus_id, _mangas_artbook_id: @_manga._mangas_artbook_id, _mangas_clip_id: @_manga._mangas_clip_id, _mangas_commerce_id: @_manga._mangas_commerce_id, _mangas_concours_id: @_manga._mangas_concours_id, _mangas_culture_id: @_manga._mangas_culture_id, _mangas_drama_id: @_manga._mangas_drama_id, _mangas_drama_plus_id: @_manga._mangas_drama_plus_id, _mangas_editeurs_vf_collection_id: @_manga._mangas_editeurs_vf_collection_id, _mangas_editeurs_vf_id: @_manga._mangas_editeurs_vf_id, _mangas_editeurs_vo_id: @_manga._mangas_editeurs_vo_id, _mangas_encours_vf_id: @_manga._mangas_encours_vf_id, _mangas_encours_vo_id: @_manga._mangas_encours_vo_id, _mangas_genres_id: @_manga._mangas_genres_id, _mangas_groupes_id: @_manga._mangas_groupes_id, _mangas_jv_id: @_manga._mangas_jv_id, _mangas_jv_plus_id: @_manga._mangas_jv_plus_id, _mangas_litterature_asiatique_id: @_manga._mangas_litterature_asiatique_id, _mangas_litterature_asiatique_plus_id: @_manga._mangas_litterature_asiatique_plus_id, _mangas_ln_id: @_manga._mangas_ln_id, _mangas_ln_plus_id: @_manga._mangas_ln_plus_id, _mangas_manga_id: @_manga._mangas_manga_id, _mangas_manga_plus_id: @_manga._mangas_manga_plus_id, _mangas_pays_id: @_manga._mangas_pays_id, _mangas_people_id: @_manga._mangas_people_id, _mangas_prepublie_id: @_manga._mangas_prepublie_id, _mangas_public_averti_id: @_manga._mangas_public_averti_id, _mangas_quizz_id: @_manga._mangas_quizz_id, _mangas_societe_people_id: @_manga._mangas_societe_people_id, _mangas_societe_role_id: @_manga._mangas_societe_role_id, _mangas_sondage_id: @_manga._mangas_sondage_id, _mangas_staff_people_id: @_manga._mangas_staff_people_id, _mangas_staff_role_id: @_manga._mangas_staff_role_id, _mangas_themes_id: @_manga._mangas_themes_id, _mangas_type_id: @_manga._mangas_type_id, acceptregles: @_manga.acceptregles, adapte_anime: @_manga.adapte_anime, age: @_manga.age, annee_defaut: @_manga.annee_defaut, annee_vf: @_manga.annee_vf, annee_vo: @_manga.annee_vo, comment: @_manga.comment, image: @_manga.image, image_vo: @_manga.image_vo, infos: @_manga.infos, nb_chapitres_vf: @_manga.nb_chapitres_vf, nb_chapitres_vo: @_manga.nb_chapitres_vo, nb_volumes_vf: @_manga.nb_volumes_vf, nb_volumes_vo: @_manga.nb_volumes_vo, prix: @_manga.prix, resume: @_manga.resume, statut_prop: @_manga.statut_prop, titre: @_manga.titre, titre_alternatif: @_manga.titre_alternatif, titre_alternatif_suite: @_manga.titre_alternatif_suite, titre_original: @_manga.titre_original, titre_original_latin: @_manga.titre_original_latin, webcomic: @_manga.webcomic, youtube: @_manga.youtube } }
    end

    assert_redirected_to _manga_url(Manga.last)
  end

  test "should show _manga" do
    get _manga_url(@_manga)
    assert_response :success
  end

  test "should get edit" do
    get edit__manga_url(@_manga)
    assert_response :success
  end

  test "should update _manga" do
    patch _manga_url(@_manga), params: { _manga: { _mangas_actualite_id: @_manga._mangas_actualite_id, _mangas_actualite_mini_id: @_manga._mangas_actualite_mini_id, _mangas_am_id: @_manga._mangas_am_id, _mangas_am_plus_id: @_manga._mangas_am_plus_id, _mangas_anime_id: @_manga._mangas_anime_id, _mangas_anime_plus_id: @_manga._mangas_anime_plus_id, _mangas_artbook_id: @_manga._mangas_artbook_id, _mangas_clip_id: @_manga._mangas_clip_id, _mangas_commerce_id: @_manga._mangas_commerce_id, _mangas_concours_id: @_manga._mangas_concours_id, _mangas_culture_id: @_manga._mangas_culture_id, _mangas_drama_id: @_manga._mangas_drama_id, _mangas_drama_plus_id: @_manga._mangas_drama_plus_id, _mangas_editeurs_vf_collection_id: @_manga._mangas_editeurs_vf_collection_id, _mangas_editeurs_vf_id: @_manga._mangas_editeurs_vf_id, _mangas_editeurs_vo_id: @_manga._mangas_editeurs_vo_id, _mangas_encours_vf_id: @_manga._mangas_encours_vf_id, _mangas_encours_vo_id: @_manga._mangas_encours_vo_id, _mangas_genres_id: @_manga._mangas_genres_id, _mangas_groupes_id: @_manga._mangas_groupes_id, _mangas_jv_id: @_manga._mangas_jv_id, _mangas_jv_plus_id: @_manga._mangas_jv_plus_id, _mangas_litterature_asiatique_id: @_manga._mangas_litterature_asiatique_id, _mangas_litterature_asiatique_plus_id: @_manga._mangas_litterature_asiatique_plus_id, _mangas_ln_id: @_manga._mangas_ln_id, _mangas_ln_plus_id: @_manga._mangas_ln_plus_id, _mangas_manga_id: @_manga._mangas_manga_id, _mangas_manga_plus_id: @_manga._mangas_manga_plus_id, _mangas_pays_id: @_manga._mangas_pays_id, _mangas_people_id: @_manga._mangas_people_id, _mangas_prepublie_id: @_manga._mangas_prepublie_id, _mangas_public_averti_id: @_manga._mangas_public_averti_id, _mangas_quizz_id: @_manga._mangas_quizz_id, _mangas_societe_people_id: @_manga._mangas_societe_people_id, _mangas_societe_role_id: @_manga._mangas_societe_role_id, _mangas_sondage_id: @_manga._mangas_sondage_id, _mangas_staff_people_id: @_manga._mangas_staff_people_id, _mangas_staff_role_id: @_manga._mangas_staff_role_id, _mangas_themes_id: @_manga._mangas_themes_id, _mangas_type_id: @_manga._mangas_type_id, acceptregles: @_manga.acceptregles, adapte_anime: @_manga.adapte_anime, age: @_manga.age, annee_defaut: @_manga.annee_defaut, annee_vf: @_manga.annee_vf, annee_vo: @_manga.annee_vo, comment: @_manga.comment, image: @_manga.image, image_vo: @_manga.image_vo, infos: @_manga.infos, nb_chapitres_vf: @_manga.nb_chapitres_vf, nb_chapitres_vo: @_manga.nb_chapitres_vo, nb_volumes_vf: @_manga.nb_volumes_vf, nb_volumes_vo: @_manga.nb_volumes_vo, prix: @_manga.prix, resume: @_manga.resume, statut_prop: @_manga.statut_prop, titre: @_manga.titre, titre_alternatif: @_manga.titre_alternatif, titre_alternatif_suite: @_manga.titre_alternatif_suite, titre_original: @_manga.titre_original, titre_original_latin: @_manga.titre_original_latin, webcomic: @_manga.webcomic, youtube: @_manga.youtube } }
    assert_redirected_to _manga_url(@_manga)
  end

  test "should destroy _manga" do
    assert_difference("Manga.count", -1) do
      delete _manga_url(@_manga)
    end

    assert_redirected_to _mangas_url
  end
end
