require "test_helper"

class FicheUniversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_fiche_univer = _fiche_univers(:one)
  end

  test "should get index" do
    get _fiche_univers_url
    assert_response :success
  end

  test "should get new" do
    get new__fiche_univer_url
    assert_response :success
  end

  test "should create _fiche_univer" do
    assert_difference("FicheUniver.count") do
      post _fiche_univers_url, params: { _fiche_univer: { _fiche_univers_actualite_id: @_fiche_univer._fiche_univers_actualite_id, _fiche_univers_actualite_mini_id: @_fiche_univer._fiche_univers_actualite_mini_id, _fiche_univers_am_id: @_fiche_univer._fiche_univers_am_id, _fiche_univers_anime_id: @_fiche_univer._fiche_univers_anime_id, _fiche_univers_cat_id: @_fiche_univer._fiche_univers_cat_id, _fiche_univers_culture_id: @_fiche_univer._fiche_univers_culture_id, _fiche_univers_doujinshi_id: @_fiche_univer._fiche_univers_doujinshi_id, _fiche_univers_drama_id: @_fiche_univer._fiche_univers_drama_id, _fiche_univers_groupes_id: @_fiche_univer._fiche_univers_groupes_id, _fiche_univers_jv_id: @_fiche_univer._fiche_univers_jv_id, _fiche_univers_jv_perso_id: @_fiche_univer._fiche_univers_jv_perso_id, _fiche_univers_litterature_asiatique_id: @_fiche_univer._fiche_univers_litterature_asiatique_id, _fiche_univers_ln_id: @_fiche_univer._fiche_univers_ln_id, _fiche_univers_manga_id: @_fiche_univer._fiche_univers_manga_id, _fiche_univers_people_id: @_fiche_univer._fiche_univers_people_id, _fiche_univers_perso_id: @_fiche_univer._fiche_univers_perso_id, _fiche_univers_perso_manga_id: @_fiche_univer._fiche_univers_perso_manga_id, _fiche_univers_univers_id: @_fiche_univer._fiche_univers_univers_id, acceptregles: @_fiche_univer.acceptregles, comment: @_fiche_univer.comment, description: @_fiche_univer.description, image: @_fiche_univer.image, nom: @_fiche_univer.nom, nom_alternatif: @_fiche_univer.nom_alternatif, nom_original: @_fiche_univer.nom_original, nom_suite: @_fiche_univer.nom_suite, statut_prop: @_fiche_univer.statut_prop } }
    end

    assert_redirected_to _fiche_univer_url(FicheUniver.last)
  end

  test "should show _fiche_univer" do
    get _fiche_univer_url(@_fiche_univer)
    assert_response :success
  end

  test "should get edit" do
    get edit__fiche_univer_url(@_fiche_univer)
    assert_response :success
  end

  test "should update _fiche_univer" do
    patch _fiche_univer_url(@_fiche_univer), params: { _fiche_univer: { _fiche_univers_actualite_id: @_fiche_univer._fiche_univers_actualite_id, _fiche_univers_actualite_mini_id: @_fiche_univer._fiche_univers_actualite_mini_id, _fiche_univers_am_id: @_fiche_univer._fiche_univers_am_id, _fiche_univers_anime_id: @_fiche_univer._fiche_univers_anime_id, _fiche_univers_cat_id: @_fiche_univer._fiche_univers_cat_id, _fiche_univers_culture_id: @_fiche_univer._fiche_univers_culture_id, _fiche_univers_doujinshi_id: @_fiche_univer._fiche_univers_doujinshi_id, _fiche_univers_drama_id: @_fiche_univer._fiche_univers_drama_id, _fiche_univers_groupes_id: @_fiche_univer._fiche_univers_groupes_id, _fiche_univers_jv_id: @_fiche_univer._fiche_univers_jv_id, _fiche_univers_jv_perso_id: @_fiche_univer._fiche_univers_jv_perso_id, _fiche_univers_litterature_asiatique_id: @_fiche_univer._fiche_univers_litterature_asiatique_id, _fiche_univers_ln_id: @_fiche_univer._fiche_univers_ln_id, _fiche_univers_manga_id: @_fiche_univer._fiche_univers_manga_id, _fiche_univers_people_id: @_fiche_univer._fiche_univers_people_id, _fiche_univers_perso_id: @_fiche_univer._fiche_univers_perso_id, _fiche_univers_perso_manga_id: @_fiche_univer._fiche_univers_perso_manga_id, _fiche_univers_univers_id: @_fiche_univer._fiche_univers_univers_id, acceptregles: @_fiche_univer.acceptregles, comment: @_fiche_univer.comment, description: @_fiche_univer.description, image: @_fiche_univer.image, nom: @_fiche_univer.nom, nom_alternatif: @_fiche_univer.nom_alternatif, nom_original: @_fiche_univer.nom_original, nom_suite: @_fiche_univer.nom_suite, statut_prop: @_fiche_univer.statut_prop } }
    assert_redirected_to _fiche_univer_url(@_fiche_univer)
  end

  test "should destroy _fiche_univer" do
    assert_difference("FicheUniver.count", -1) do
      delete _fiche_univer_url(@_fiche_univer)
    end

    assert_redirected_to _fiche_univers_url
  end
end
