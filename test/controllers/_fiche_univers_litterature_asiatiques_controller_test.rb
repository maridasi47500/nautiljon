require "test_helper"

class FicheUniversLitteratureAsiatiquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_fiche_univers_litterature_asiatique = _fiche_univers_litterature_asiatiques(:one)
  end

  test "should get index" do
    get _fiche_univers_litterature_asiatiques_url
    assert_response :success
  end

  test "should get new" do
    get new__fiche_univers_litterature_asiatique_url
    assert_response :success
  end

  test "should create _fiche_univers_litterature_asiatique" do
    assert_difference("FicheUniversLitteratureAsiatique.count") do
      post _fiche_univers_litterature_asiatiques_url, params: { _fiche_univers_litterature_asiatique: { name: @_fiche_univers_litterature_asiatique.name } }
    end

    assert_redirected_to _fiche_univers_litterature_asiatique_url(FicheUniversLitteratureAsiatique.last)
  end

  test "should show _fiche_univers_litterature_asiatique" do
    get _fiche_univers_litterature_asiatique_url(@_fiche_univers_litterature_asiatique)
    assert_response :success
  end

  test "should get edit" do
    get edit__fiche_univers_litterature_asiatique_url(@_fiche_univers_litterature_asiatique)
    assert_response :success
  end

  test "should update _fiche_univers_litterature_asiatique" do
    patch _fiche_univers_litterature_asiatique_url(@_fiche_univers_litterature_asiatique), params: { _fiche_univers_litterature_asiatique: { name: @_fiche_univers_litterature_asiatique.name } }
    assert_redirected_to _fiche_univers_litterature_asiatique_url(@_fiche_univers_litterature_asiatique)
  end

  test "should destroy _fiche_univers_litterature_asiatique" do
    assert_difference("FicheUniversLitteratureAsiatique.count", -1) do
      delete _fiche_univers_litterature_asiatique_url(@_fiche_univers_litterature_asiatique)
    end

    assert_redirected_to _fiche_univers_litterature_asiatiques_url
  end
end
