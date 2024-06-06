require "test_helper"

class FicheUniversActualitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_fiche_univers_actualite = _fiche_univers_actualites(:one)
  end

  test "should get index" do
    get _fiche_univers_actualites_url
    assert_response :success
  end

  test "should get new" do
    get new__fiche_univers_actualite_url
    assert_response :success
  end

  test "should create _fiche_univers_actualite" do
    assert_difference("FicheUniversActualite.count") do
      post _fiche_univers_actualites_url, params: { _fiche_univers_actualite: { name: @_fiche_univers_actualite.name } }
    end

    assert_redirected_to _fiche_univers_actualite_url(FicheUniversActualite.last)
  end

  test "should show _fiche_univers_actualite" do
    get _fiche_univers_actualite_url(@_fiche_univers_actualite)
    assert_response :success
  end

  test "should get edit" do
    get edit__fiche_univers_actualite_url(@_fiche_univers_actualite)
    assert_response :success
  end

  test "should update _fiche_univers_actualite" do
    patch _fiche_univers_actualite_url(@_fiche_univers_actualite), params: { _fiche_univers_actualite: { name: @_fiche_univers_actualite.name } }
    assert_redirected_to _fiche_univers_actualite_url(@_fiche_univers_actualite)
  end

  test "should destroy _fiche_univers_actualite" do
    assert_difference("FicheUniversActualite.count", -1) do
      delete _fiche_univers_actualite_url(@_fiche_univers_actualite)
    end

    assert_redirected_to _fiche_univers_actualites_url
  end
end
