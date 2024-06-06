require "test_helper"

class FicheUniversLnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_fiche_univers_ln = _fiche_univers_lns(:one)
  end

  test "should get index" do
    get _fiche_univers_lns_url
    assert_response :success
  end

  test "should get new" do
    get new__fiche_univers_ln_url
    assert_response :success
  end

  test "should create _fiche_univers_ln" do
    assert_difference("FicheUniversLn.count") do
      post _fiche_univers_lns_url, params: { _fiche_univers_ln: { name: @_fiche_univers_ln.name } }
    end

    assert_redirected_to _fiche_univers_ln_url(FicheUniversLn.last)
  end

  test "should show _fiche_univers_ln" do
    get _fiche_univers_ln_url(@_fiche_univers_ln)
    assert_response :success
  end

  test "should get edit" do
    get edit__fiche_univers_ln_url(@_fiche_univers_ln)
    assert_response :success
  end

  test "should update _fiche_univers_ln" do
    patch _fiche_univers_ln_url(@_fiche_univers_ln), params: { _fiche_univers_ln: { name: @_fiche_univers_ln.name } }
    assert_redirected_to _fiche_univers_ln_url(@_fiche_univers_ln)
  end

  test "should destroy _fiche_univers_ln" do
    assert_difference("FicheUniversLn.count", -1) do
      delete _fiche_univers_ln_url(@_fiche_univers_ln)
    end

    assert_redirected_to _fiche_univers_lns_url
  end
end
