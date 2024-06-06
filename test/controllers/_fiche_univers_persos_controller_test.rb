require "test_helper"

class FicheUniversPersosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_fiche_univers_perso = _fiche_univers_persos(:one)
  end

  test "should get index" do
    get _fiche_univers_persos_url
    assert_response :success
  end

  test "should get new" do
    get new__fiche_univers_perso_url
    assert_response :success
  end

  test "should create _fiche_univers_perso" do
    assert_difference("FicheUniversPerso.count") do
      post _fiche_univers_persos_url, params: { _fiche_univers_perso: { name: @_fiche_univers_perso.name } }
    end

    assert_redirected_to _fiche_univers_perso_url(FicheUniversPerso.last)
  end

  test "should show _fiche_univers_perso" do
    get _fiche_univers_perso_url(@_fiche_univers_perso)
    assert_response :success
  end

  test "should get edit" do
    get edit__fiche_univers_perso_url(@_fiche_univers_perso)
    assert_response :success
  end

  test "should update _fiche_univers_perso" do
    patch _fiche_univers_perso_url(@_fiche_univers_perso), params: { _fiche_univers_perso: { name: @_fiche_univers_perso.name } }
    assert_redirected_to _fiche_univers_perso_url(@_fiche_univers_perso)
  end

  test "should destroy _fiche_univers_perso" do
    assert_difference("FicheUniversPerso.count", -1) do
      delete _fiche_univers_perso_url(@_fiche_univers_perso)
    end

    assert_redirected_to _fiche_univers_persos_url
  end
end
