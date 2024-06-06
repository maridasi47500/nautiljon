require "test_helper"

class FicheUniversActualiteMinisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_fiche_univers_actualite_mini = _fiche_univers_actualite_minis(:one)
  end

  test "should get index" do
    get _fiche_univers_actualite_minis_url
    assert_response :success
  end

  test "should get new" do
    get new__fiche_univers_actualite_mini_url
    assert_response :success
  end

  test "should create _fiche_univers_actualite_mini" do
    assert_difference("FicheUniversActualiteMini.count") do
      post _fiche_univers_actualite_minis_url, params: { _fiche_univers_actualite_mini: { name: @_fiche_univers_actualite_mini.name } }
    end

    assert_redirected_to _fiche_univers_actualite_mini_url(FicheUniversActualiteMini.last)
  end

  test "should show _fiche_univers_actualite_mini" do
    get _fiche_univers_actualite_mini_url(@_fiche_univers_actualite_mini)
    assert_response :success
  end

  test "should get edit" do
    get edit__fiche_univers_actualite_mini_url(@_fiche_univers_actualite_mini)
    assert_response :success
  end

  test "should update _fiche_univers_actualite_mini" do
    patch _fiche_univers_actualite_mini_url(@_fiche_univers_actualite_mini), params: { _fiche_univers_actualite_mini: { name: @_fiche_univers_actualite_mini.name } }
    assert_redirected_to _fiche_univers_actualite_mini_url(@_fiche_univers_actualite_mini)
  end

  test "should destroy _fiche_univers_actualite_mini" do
    assert_difference("FicheUniversActualiteMini.count", -1) do
      delete _fiche_univers_actualite_mini_url(@_fiche_univers_actualite_mini)
    end

    assert_redirected_to _fiche_univers_actualite_minis_url
  end
end
