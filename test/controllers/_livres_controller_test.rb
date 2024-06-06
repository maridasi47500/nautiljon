require "test_helper"

class LivresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livre = _livres(:one)
  end

  test "should get index" do
    get _livres_url
    assert_response :success
  end

  test "should get new" do
    get new__livre_url
    assert_response :success
  end

  test "should create _livre" do
    assert_difference("Livre.count") do
      post _livres_url, params: { _livre: { _livres_actualite_id: @_livre._livres_actualite_id, _livres_actualite_mini_id: @_livre._livres_actualite_mini_id, _livres_am_id: @_livre._livres_am_id, _livres_am_plus_id: @_livre._livres_am_plus_id, _livres_anime_id: @_livre._livres_anime_id, _livres_anime_plus_id: @_livre._livres_anime_plus_id, _livres_culture_id: @_livre._livres_culture_id, _livres_drama_id: @_livre._livres_drama_id, _livres_drama_plus_id: @_livre._livres_drama_plus_id, _livres_editeurs_vf_id: @_livre._livres_editeurs_vf_id, _livres_editeurs_vo_id: @_livre._livres_editeurs_vo_id, _livres_genres_id: @_livre._livres_genres_id, _livres_goodies_id: @_livre._livres_goodies_id, _livres_groupes_id: @_livre._livres_groupes_id, _livres_jv_id: @_livre._livres_jv_id, _livres_jv_plus_id: @_livre._livres_jv_plus_id, _livres_litterature_asiatique_id: @_livre._livres_litterature_asiatique_id, _livres_litterature_asiatique_plus_id: @_livre._livres_litterature_asiatique_plus_id, _livres_ln_id: @_livre._livres_ln_id, _livres_ln_plus_id: @_livre._livres_ln_plus_id, _livres_manga_id: @_livre._livres_manga_id, _livres_manga_plus_id: @_livre._livres_manga_plus_id, _livres_pays_id: @_livre._livres_pays_id, _livres_pays_theme_id: @_livre._livres_pays_theme_id, _livres_people_id: @_livre._livres_people_id, _livres_public_averti_id: @_livre._livres_public_averti_id, _livres_staff_people_id: @_livre._livres_staff_people_id, _livres_staff_role_id: @_livre._livres_staff_role_id, _livres_statut_publication_id: @_livre._livres_statut_publication_id, _livres_themes_id: @_livre._livres_themes_id, _livres_type_id: @_livre._livres_type_id, _livres_type_secondaire_id: @_livre._livres_type_secondaire_id, acceptregles: @_livre.acceptregles, age: @_livre.age, collection: @_livre.collection, comment: @_livre.comment, date_parution_vf_aaaa: @_livre.date_parution_vf_aaaa, date_parution_vf_jj: @_livre.date_parution_vf_jj, date_parution_vf_mm: @_livre.date_parution_vf_mm, date_parution_vo_aaaa: @_livre.date_parution_vo_aaaa, date_parution_vo_jj: @_livre.date_parution_vo_jj, date_parution_vo_mm: @_livre.date_parution_vo_mm, ean: @_livre.ean, gratuit: @_livre.gratuit, image: @_livre.image, pages: @_livre.pages, preview: @_livre.preview, prix: @_livre.prix, resume: @_livre.resume, statut_prop: @_livre.statut_prop, titre: @_livre.titre, titre_original: @_livre.titre_original, titre_original_latin: @_livre.titre_original_latin, traducteur: @_livre.traducteur } }
    end

    assert_redirected_to _livre_url(Livre.last)
  end

  test "should show _livre" do
    get _livre_url(@_livre)
    assert_response :success
  end

  test "should get edit" do
    get edit__livre_url(@_livre)
    assert_response :success
  end

  test "should update _livre" do
    patch _livre_url(@_livre), params: { _livre: { _livres_actualite_id: @_livre._livres_actualite_id, _livres_actualite_mini_id: @_livre._livres_actualite_mini_id, _livres_am_id: @_livre._livres_am_id, _livres_am_plus_id: @_livre._livres_am_plus_id, _livres_anime_id: @_livre._livres_anime_id, _livres_anime_plus_id: @_livre._livres_anime_plus_id, _livres_culture_id: @_livre._livres_culture_id, _livres_drama_id: @_livre._livres_drama_id, _livres_drama_plus_id: @_livre._livres_drama_plus_id, _livres_editeurs_vf_id: @_livre._livres_editeurs_vf_id, _livres_editeurs_vo_id: @_livre._livres_editeurs_vo_id, _livres_genres_id: @_livre._livres_genres_id, _livres_goodies_id: @_livre._livres_goodies_id, _livres_groupes_id: @_livre._livres_groupes_id, _livres_jv_id: @_livre._livres_jv_id, _livres_jv_plus_id: @_livre._livres_jv_plus_id, _livres_litterature_asiatique_id: @_livre._livres_litterature_asiatique_id, _livres_litterature_asiatique_plus_id: @_livre._livres_litterature_asiatique_plus_id, _livres_ln_id: @_livre._livres_ln_id, _livres_ln_plus_id: @_livre._livres_ln_plus_id, _livres_manga_id: @_livre._livres_manga_id, _livres_manga_plus_id: @_livre._livres_manga_plus_id, _livres_pays_id: @_livre._livres_pays_id, _livres_pays_theme_id: @_livre._livres_pays_theme_id, _livres_people_id: @_livre._livres_people_id, _livres_public_averti_id: @_livre._livres_public_averti_id, _livres_staff_people_id: @_livre._livres_staff_people_id, _livres_staff_role_id: @_livre._livres_staff_role_id, _livres_statut_publication_id: @_livre._livres_statut_publication_id, _livres_themes_id: @_livre._livres_themes_id, _livres_type_id: @_livre._livres_type_id, _livres_type_secondaire_id: @_livre._livres_type_secondaire_id, acceptregles: @_livre.acceptregles, age: @_livre.age, collection: @_livre.collection, comment: @_livre.comment, date_parution_vf_aaaa: @_livre.date_parution_vf_aaaa, date_parution_vf_jj: @_livre.date_parution_vf_jj, date_parution_vf_mm: @_livre.date_parution_vf_mm, date_parution_vo_aaaa: @_livre.date_parution_vo_aaaa, date_parution_vo_jj: @_livre.date_parution_vo_jj, date_parution_vo_mm: @_livre.date_parution_vo_mm, ean: @_livre.ean, gratuit: @_livre.gratuit, image: @_livre.image, pages: @_livre.pages, preview: @_livre.preview, prix: @_livre.prix, resume: @_livre.resume, statut_prop: @_livre.statut_prop, titre: @_livre.titre, titre_original: @_livre.titre_original, titre_original_latin: @_livre.titre_original_latin, traducteur: @_livre.traducteur } }
    assert_redirected_to _livre_url(@_livre)
  end

  test "should destroy _livre" do
    assert_difference("Livre.count", -1) do
      delete _livre_url(@_livre)
    end

    assert_redirected_to _livres_url
  end
end
