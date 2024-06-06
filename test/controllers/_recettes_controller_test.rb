require "test_helper"

class RecettesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_recette = _recettes(:one)
  end

  test "should get index" do
    get _recettes_url
    assert_response :success
  end

  test "should get new" do
    get new__recette_url
    assert_response :success
  end

  test "should create _recette" do
    assert_difference("Recette.count") do
      post _recettes_url, params: { _recette: { _recettes_difficulte_id: @_recette._recettes_difficulte_id, _recettes_plat_id: @_recette._recettes_plat_id, _recettes_type_id: @_recette._recettes_type_id, acceptregles: @_recette.acceptregles, comment: @_recette.comment, cuisson: @_recette.cuisson, image: @_recette.image, ingredients: @_recette.ingredients, nb_pers: @_recette.nb_pers, nom: @_recette.nom, preparation: @_recette.preparation, source: @_recette.source, texte: @_recette.texte } }
    end

    assert_redirected_to _recette_url(Recette.last)
  end

  test "should show _recette" do
    get _recette_url(@_recette)
    assert_response :success
  end

  test "should get edit" do
    get edit__recette_url(@_recette)
    assert_response :success
  end

  test "should update _recette" do
    patch _recette_url(@_recette), params: { _recette: { _recettes_difficulte_id: @_recette._recettes_difficulte_id, _recettes_plat_id: @_recette._recettes_plat_id, _recettes_type_id: @_recette._recettes_type_id, acceptregles: @_recette.acceptregles, comment: @_recette.comment, cuisson: @_recette.cuisson, image: @_recette.image, ingredients: @_recette.ingredients, nb_pers: @_recette.nb_pers, nom: @_recette.nom, preparation: @_recette.preparation, source: @_recette.source, texte: @_recette.texte } }
    assert_redirected_to _recette_url(@_recette)
  end

  test "should destroy _recette" do
    assert_difference("Recette.count", -1) do
      delete _recette_url(@_recette)
    end

    assert_redirected_to _recettes_url
  end
end
