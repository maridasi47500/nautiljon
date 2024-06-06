require "test_helper"

class FicheUniversGroupesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_fiche_univers_groupe = _fiche_univers_groupes(:one)
  end

  test "should get index" do
    get _fiche_univers_groupes_url
    assert_response :success
  end

  test "should get new" do
    get new__fiche_univers_groupe_url
    assert_response :success
  end

  test "should create _fiche_univers_groupe" do
    assert_difference("FicheUniversGroupe.count") do
      post _fiche_univers_groupes_url, params: { _fiche_univers_groupe: { name: @_fiche_univers_groupe.name } }
    end

    assert_redirected_to _fiche_univers_groupe_url(FicheUniversGroupe.last)
  end

  test "should show _fiche_univers_groupe" do
    get _fiche_univers_groupe_url(@_fiche_univers_groupe)
    assert_response :success
  end

  test "should get edit" do
    get edit__fiche_univers_groupe_url(@_fiche_univers_groupe)
    assert_response :success
  end

  test "should update _fiche_univers_groupe" do
    patch _fiche_univers_groupe_url(@_fiche_univers_groupe), params: { _fiche_univers_groupe: { name: @_fiche_univers_groupe.name } }
    assert_redirected_to _fiche_univers_groupe_url(@_fiche_univers_groupe)
  end

  test "should destroy _fiche_univers_groupe" do
    assert_difference("FicheUniversGroupe.count", -1) do
      delete _fiche_univers_groupe_url(@_fiche_univers_groupe)
    end

    assert_redirected_to _fiche_univers_groupes_url
  end
end
