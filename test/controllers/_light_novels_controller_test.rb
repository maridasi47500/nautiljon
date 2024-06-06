require "test_helper"

class LightNovelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novel = _light_novels(:one)
  end

  test "should get index" do
    get _light_novels_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novel_url
    assert_response :success
  end

  test "should create _light_novel" do
    assert_difference("LightNovel.count") do
      post _light_novels_url, params: { _light_novel: { _light_novels_actualite_id: @_light_novel._light_novels_actualite_id, _light_novels_actualite_mini_id: @_light_novel._light_novels_actualite_mini_id, _light_novels_am_id: @_light_novel._light_novels_am_id, _light_novels_am_plus_id: @_light_novel._light_novels_am_plus_id, _light_novels_anime_id: @_light_novel._light_novels_anime_id, _light_novels_anime_plus_id: @_light_novel._light_novels_anime_plus_id, _light_novels_artbook_id: @_light_novel._light_novels_artbook_id, _light_novels_commerce_id: @_light_novel._light_novels_commerce_id, _light_novels_culture_id: @_light_novel._light_novels_culture_id, _light_novels_drama_id: @_light_novel._light_novels_drama_id, _light_novels_drama_plus_id: @_light_novel._light_novels_drama_plus_id, _light_novels_editeurs_vf_collection_id: @_light_novel._light_novels_editeurs_vf_collection_id, _light_novels_editeurs_vf_id: @_light_novel._light_novels_editeurs_vf_id, _light_novels_editeurs_vo_id: @_light_novel._light_novels_editeurs_vo_id, _light_novels_encours_vf_id: @_light_novel._light_novels_encours_vf_id, _light_novels_encours_vo_id: @_light_novel._light_novels_encours_vo_id, _light_novels_genres_id: @_light_novel._light_novels_genres_id, _light_novels_groupes_id: @_light_novel._light_novels_groupes_id, _light_novels_jv_id: @_light_novel._light_novels_jv_id, _light_novels_jv_plus_id: @_light_novel._light_novels_jv_plus_id, _light_novels_litterature_asiatique_id: @_light_novel._light_novels_litterature_asiatique_id, _light_novels_litterature_asiatique_plus_id: @_light_novel._light_novels_litterature_asiatique_plus_id, _light_novels_ln_id: @_light_novel._light_novels_ln_id, _light_novels_ln_plus_id: @_light_novel._light_novels_ln_plus_id, _light_novels_manga_id: @_light_novel._light_novels_manga_id, _light_novels_manga_plus_id: @_light_novel._light_novels_manga_plus_id, _light_novels_ost_id: @_light_novel._light_novels_ost_id, _light_novels_pays_id: @_light_novel._light_novels_pays_id, _light_novels_prepublie_id: @_light_novel._light_novels_prepublie_id, _light_novels_public_averti_id: @_light_novel._light_novels_public_averti_id, _light_novels_quizz_id: @_light_novel._light_novels_quizz_id, _light_novels_societe_people_id: @_light_novel._light_novels_societe_people_id, _light_novels_societe_role_id: @_light_novel._light_novels_societe_role_id, _light_novels_staff_people_id: @_light_novel._light_novels_staff_people_id, _light_novels_staff_role_id: @_light_novel._light_novels_staff_role_id, _light_novels_themes_id: @_light_novel._light_novels_themes_id, acceptregles: @_light_novel.acceptregles, adapte_anime: @_light_novel.adapte_anime, age: @_light_novel.age, annee_vf: @_light_novel.annee_vf, annee_vo: @_light_novel.annee_vo, comment: @_light_novel.comment, image: @_light_novel.image, image_vo: @_light_novel.image_vo, nb_chapitres_vf: @_light_novel.nb_chapitres_vf, nb_chapitres_vo: @_light_novel.nb_chapitres_vo, nb_volumes_vf: @_light_novel.nb_volumes_vf, nb_volumes_vo: @_light_novel.nb_volumes_vo, prix: @_light_novel.prix, resume: @_light_novel.resume, statut_prop: @_light_novel.statut_prop, titre: @_light_novel.titre, titre_alternatif: @_light_novel.titre_alternatif, titre_alternatif_suite: @_light_novel.titre_alternatif_suite, titre_original: @_light_novel.titre_original, titre_original_latin: @_light_novel.titre_original_latin, webcomic: @_light_novel.webcomic } }
    end

    assert_redirected_to _light_novel_url(LightNovel.last)
  end

  test "should show _light_novel" do
    get _light_novel_url(@_light_novel)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novel_url(@_light_novel)
    assert_response :success
  end

  test "should update _light_novel" do
    patch _light_novel_url(@_light_novel), params: { _light_novel: { _light_novels_actualite_id: @_light_novel._light_novels_actualite_id, _light_novels_actualite_mini_id: @_light_novel._light_novels_actualite_mini_id, _light_novels_am_id: @_light_novel._light_novels_am_id, _light_novels_am_plus_id: @_light_novel._light_novels_am_plus_id, _light_novels_anime_id: @_light_novel._light_novels_anime_id, _light_novels_anime_plus_id: @_light_novel._light_novels_anime_plus_id, _light_novels_artbook_id: @_light_novel._light_novels_artbook_id, _light_novels_commerce_id: @_light_novel._light_novels_commerce_id, _light_novels_culture_id: @_light_novel._light_novels_culture_id, _light_novels_drama_id: @_light_novel._light_novels_drama_id, _light_novels_drama_plus_id: @_light_novel._light_novels_drama_plus_id, _light_novels_editeurs_vf_collection_id: @_light_novel._light_novels_editeurs_vf_collection_id, _light_novels_editeurs_vf_id: @_light_novel._light_novels_editeurs_vf_id, _light_novels_editeurs_vo_id: @_light_novel._light_novels_editeurs_vo_id, _light_novels_encours_vf_id: @_light_novel._light_novels_encours_vf_id, _light_novels_encours_vo_id: @_light_novel._light_novels_encours_vo_id, _light_novels_genres_id: @_light_novel._light_novels_genres_id, _light_novels_groupes_id: @_light_novel._light_novels_groupes_id, _light_novels_jv_id: @_light_novel._light_novels_jv_id, _light_novels_jv_plus_id: @_light_novel._light_novels_jv_plus_id, _light_novels_litterature_asiatique_id: @_light_novel._light_novels_litterature_asiatique_id, _light_novels_litterature_asiatique_plus_id: @_light_novel._light_novels_litterature_asiatique_plus_id, _light_novels_ln_id: @_light_novel._light_novels_ln_id, _light_novels_ln_plus_id: @_light_novel._light_novels_ln_plus_id, _light_novels_manga_id: @_light_novel._light_novels_manga_id, _light_novels_manga_plus_id: @_light_novel._light_novels_manga_plus_id, _light_novels_ost_id: @_light_novel._light_novels_ost_id, _light_novels_pays_id: @_light_novel._light_novels_pays_id, _light_novels_prepublie_id: @_light_novel._light_novels_prepublie_id, _light_novels_public_averti_id: @_light_novel._light_novels_public_averti_id, _light_novels_quizz_id: @_light_novel._light_novels_quizz_id, _light_novels_societe_people_id: @_light_novel._light_novels_societe_people_id, _light_novels_societe_role_id: @_light_novel._light_novels_societe_role_id, _light_novels_staff_people_id: @_light_novel._light_novels_staff_people_id, _light_novels_staff_role_id: @_light_novel._light_novels_staff_role_id, _light_novels_themes_id: @_light_novel._light_novels_themes_id, acceptregles: @_light_novel.acceptregles, adapte_anime: @_light_novel.adapte_anime, age: @_light_novel.age, annee_vf: @_light_novel.annee_vf, annee_vo: @_light_novel.annee_vo, comment: @_light_novel.comment, image: @_light_novel.image, image_vo: @_light_novel.image_vo, nb_chapitres_vf: @_light_novel.nb_chapitres_vf, nb_chapitres_vo: @_light_novel.nb_chapitres_vo, nb_volumes_vf: @_light_novel.nb_volumes_vf, nb_volumes_vo: @_light_novel.nb_volumes_vo, prix: @_light_novel.prix, resume: @_light_novel.resume, statut_prop: @_light_novel.statut_prop, titre: @_light_novel.titre, titre_alternatif: @_light_novel.titre_alternatif, titre_alternatif_suite: @_light_novel.titre_alternatif_suite, titre_original: @_light_novel.titre_original, titre_original_latin: @_light_novel.titre_original_latin, webcomic: @_light_novel.webcomic } }
    assert_redirected_to _light_novel_url(@_light_novel)
  end

  test "should destroy _light_novel" do
    assert_difference("LightNovel.count", -1) do
      delete _light_novel_url(@_light_novel)
    end

    assert_redirected_to _light_novels_url
  end
end
