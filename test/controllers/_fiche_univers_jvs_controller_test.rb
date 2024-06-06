require "test_helper"

class FicheUniversJvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_fiche_univers_jv = _fiche_univers_jvs(:one)
  end

  test "should get index" do
    get _fiche_univers_jvs_url
    assert_response :success
  end

  test "should get new" do
    get new__fiche_univers_jv_url
    assert_response :success
  end

  test "should create _fiche_univers_jv" do
    assert_difference("FicheUniversJv.count") do
      post _fiche_univers_jvs_url, params: { _fiche_univers_jv: { name: @_fiche_univers_jv.name } }
    end

    assert_redirected_to _fiche_univers_jv_url(FicheUniversJv.last)
  end

  test "should show _fiche_univers_jv" do
    get _fiche_univers_jv_url(@_fiche_univers_jv)
    assert_response :success
  end

  test "should get edit" do
    get edit__fiche_univers_jv_url(@_fiche_univers_jv)
    assert_response :success
  end

  test "should update _fiche_univers_jv" do
    patch _fiche_univers_jv_url(@_fiche_univers_jv), params: { _fiche_univers_jv: { name: @_fiche_univers_jv.name } }
    assert_redirected_to _fiche_univers_jv_url(@_fiche_univers_jv)
  end

  test "should destroy _fiche_univers_jv" do
    assert_difference("FicheUniversJv.count", -1) do
      delete _fiche_univers_jv_url(@_fiche_univers_jv)
    end

    assert_redirected_to _fiche_univers_jvs_url
  end
end
