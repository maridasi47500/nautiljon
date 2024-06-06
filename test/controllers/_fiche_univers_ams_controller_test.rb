require "test_helper"

class FicheUniversAmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_fiche_univers_am = _fiche_univers_ams(:one)
  end

  test "should get index" do
    get _fiche_univers_ams_url
    assert_response :success
  end

  test "should get new" do
    get new__fiche_univers_am_url
    assert_response :success
  end

  test "should create _fiche_univers_am" do
    assert_difference("FicheUniversAm.count") do
      post _fiche_univers_ams_url, params: { _fiche_univers_am: { name: @_fiche_univers_am.name } }
    end

    assert_redirected_to _fiche_univers_am_url(FicheUniversAm.last)
  end

  test "should show _fiche_univers_am" do
    get _fiche_univers_am_url(@_fiche_univers_am)
    assert_response :success
  end

  test "should get edit" do
    get edit__fiche_univers_am_url(@_fiche_univers_am)
    assert_response :success
  end

  test "should update _fiche_univers_am" do
    patch _fiche_univers_am_url(@_fiche_univers_am), params: { _fiche_univers_am: { name: @_fiche_univers_am.name } }
    assert_redirected_to _fiche_univers_am_url(@_fiche_univers_am)
  end

  test "should destroy _fiche_univers_am" do
    assert_difference("FicheUniversAm.count", -1) do
      delete _fiche_univers_am_url(@_fiche_univers_am)
    end

    assert_redirected_to _fiche_univers_ams_url
  end
end
