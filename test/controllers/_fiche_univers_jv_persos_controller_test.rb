require "test_helper"

class FicheUniversJvPersosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_fiche_univers_jv_perso = _fiche_univers_jv_persos(:one)
  end

  test "should get index" do
    get _fiche_univers_jv_persos_url
    assert_response :success
  end

  test "should get new" do
    get new__fiche_univers_jv_perso_url
    assert_response :success
  end

  test "should create _fiche_univers_jv_perso" do
    assert_difference("FicheUniversJvPerso.count") do
      post _fiche_univers_jv_persos_url, params: { _fiche_univers_jv_perso: { name: @_fiche_univers_jv_perso.name } }
    end

    assert_redirected_to _fiche_univers_jv_perso_url(FicheUniversJvPerso.last)
  end

  test "should show _fiche_univers_jv_perso" do
    get _fiche_univers_jv_perso_url(@_fiche_univers_jv_perso)
    assert_response :success
  end

  test "should get edit" do
    get edit__fiche_univers_jv_perso_url(@_fiche_univers_jv_perso)
    assert_response :success
  end

  test "should update _fiche_univers_jv_perso" do
    patch _fiche_univers_jv_perso_url(@_fiche_univers_jv_perso), params: { _fiche_univers_jv_perso: { name: @_fiche_univers_jv_perso.name } }
    assert_redirected_to _fiche_univers_jv_perso_url(@_fiche_univers_jv_perso)
  end

  test "should destroy _fiche_univers_jv_perso" do
    assert_difference("FicheUniversJvPerso.count", -1) do
      delete _fiche_univers_jv_perso_url(@_fiche_univers_jv_perso)
    end

    assert_redirected_to _fiche_univers_jv_persos_url
  end
end
