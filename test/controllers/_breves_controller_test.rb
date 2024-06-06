require "test_helper"

class BrevesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_brefe = _breves(:one)
  end

  test "should get index" do
    get _breves_url
    assert_response :success
  end

  test "should get new" do
    get new__brefe_url
    assert_response :success
  end

  test "should create _brefe" do
    assert_difference("Brefe.count") do
      post _breves_url, params: { _brefe: { _breves_actualite_id: @_brefe._breves_actualite_id, _breves_actualite_mini_id: @_brefe._breves_actualite_mini_id, _breves_am_id: @_brefe._breves_am_id, _breves_amv_id: @_brefe._breves_amv_id, _breves_anime_id: @_brefe._breves_anime_id, _breves_anime_studio_id: @_brefe._breves_anime_studio_id, _breves_artbook_id: @_brefe._breves_artbook_id, _breves_beau_livre_id: @_brefe._breves_beau_livre_id, _breves_cat_id: @_brefe._breves_cat_id, _breves_cd_id: @_brefe._breves_cd_id, _breves_cinema_id: @_brefe._breves_cinema_id, _breves_clip_id: @_brefe._breves_clip_id, _breves_concerts_id: @_brefe._breves_concerts_id, _breves_concours_id: @_brefe._breves_concours_id, _breves_culture_id: @_brefe._breves_culture_id, _breves_drama_id: @_brefe._breves_drama_id, _breves_dvd_id: @_brefe._breves_dvd_id, _breves_emission_tv_id: @_brefe._breves_emission_tv_id, _breves_emission_tv_numero_id: @_brefe._breves_emission_tv_numero_id, _breves_evenement_id: @_brefe._breves_evenement_id, _breves_goodies_id: @_brefe._breves_goodies_id, _breves_jv_id: @_brefe._breves_jv_id, _breves_jv_societe_id: @_brefe._breves_jv_societe_id, _breves_litterature_asiatique_id: @_brefe._breves_litterature_asiatique_id, _breves_livre_jeunesse_id: @_brefe._breves_livre_jeunesse_id, _breves_ln_id: @_brefe._breves_ln_id, _breves_magazine_id: @_brefe._breves_magazine_id, _breves_manga_editeur_id: @_brefe._breves_manga_editeur_id, _breves_manga_id: @_brefe._breves_manga_id, _breves_ost_id: @_brefe._breves_ost_id, _breves_people_id: @_brefe._breves_people_id, _breves_photobook_id: @_brefe._breves_photobook_id, _breves_quizz_id: @_brefe._breves_quizz_id, _breves_recette_id: @_brefe._breves_recette_id, _breves_societe_id: @_brefe._breves_societe_id, _breves_sondage_id: @_brefe._breves_sondage_id, acceptregles: @_brefe.acceptregles, comment: @_brefe.comment, image: @_brefe.image, source: @_brefe.source, source2: @_brefe.source2, source2_url: @_brefe.source2_url, source3: @_brefe.source3, source3_url: @_brefe.source3_url, source_url: @_brefe.source_url, statut_prop: @_brefe.statut_prop, tags: @_brefe.tags, texte: @_brefe.texte, titre: @_brefe.titre } }
    end

    assert_redirected_to _brefe_url(Brefe.last)
  end

  test "should show _brefe" do
    get _brefe_url(@_brefe)
    assert_response :success
  end

  test "should get edit" do
    get edit__brefe_url(@_brefe)
    assert_response :success
  end

  test "should update _brefe" do
    patch _brefe_url(@_brefe), params: { _brefe: { _breves_actualite_id: @_brefe._breves_actualite_id, _breves_actualite_mini_id: @_brefe._breves_actualite_mini_id, _breves_am_id: @_brefe._breves_am_id, _breves_amv_id: @_brefe._breves_amv_id, _breves_anime_id: @_brefe._breves_anime_id, _breves_anime_studio_id: @_brefe._breves_anime_studio_id, _breves_artbook_id: @_brefe._breves_artbook_id, _breves_beau_livre_id: @_brefe._breves_beau_livre_id, _breves_cat_id: @_brefe._breves_cat_id, _breves_cd_id: @_brefe._breves_cd_id, _breves_cinema_id: @_brefe._breves_cinema_id, _breves_clip_id: @_brefe._breves_clip_id, _breves_concerts_id: @_brefe._breves_concerts_id, _breves_concours_id: @_brefe._breves_concours_id, _breves_culture_id: @_brefe._breves_culture_id, _breves_drama_id: @_brefe._breves_drama_id, _breves_dvd_id: @_brefe._breves_dvd_id, _breves_emission_tv_id: @_brefe._breves_emission_tv_id, _breves_emission_tv_numero_id: @_brefe._breves_emission_tv_numero_id, _breves_evenement_id: @_brefe._breves_evenement_id, _breves_goodies_id: @_brefe._breves_goodies_id, _breves_jv_id: @_brefe._breves_jv_id, _breves_jv_societe_id: @_brefe._breves_jv_societe_id, _breves_litterature_asiatique_id: @_brefe._breves_litterature_asiatique_id, _breves_livre_jeunesse_id: @_brefe._breves_livre_jeunesse_id, _breves_ln_id: @_brefe._breves_ln_id, _breves_magazine_id: @_brefe._breves_magazine_id, _breves_manga_editeur_id: @_brefe._breves_manga_editeur_id, _breves_manga_id: @_brefe._breves_manga_id, _breves_ost_id: @_brefe._breves_ost_id, _breves_people_id: @_brefe._breves_people_id, _breves_photobook_id: @_brefe._breves_photobook_id, _breves_quizz_id: @_brefe._breves_quizz_id, _breves_recette_id: @_brefe._breves_recette_id, _breves_societe_id: @_brefe._breves_societe_id, _breves_sondage_id: @_brefe._breves_sondage_id, acceptregles: @_brefe.acceptregles, comment: @_brefe.comment, image: @_brefe.image, source: @_brefe.source, source2: @_brefe.source2, source2_url: @_brefe.source2_url, source3: @_brefe.source3, source3_url: @_brefe.source3_url, source_url: @_brefe.source_url, statut_prop: @_brefe.statut_prop, tags: @_brefe.tags, texte: @_brefe.texte, titre: @_brefe.titre } }
    assert_redirected_to _brefe_url(@_brefe)
  end

  test "should destroy _brefe" do
    assert_difference("Brefe.count", -1) do
      delete _brefe_url(@_brefe)
    end

    assert_redirected_to _breves_url
  end
end
