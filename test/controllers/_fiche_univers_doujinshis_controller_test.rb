require "test_helper"

class FicheUniversDoujinshisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_fiche_univers_doujinshi = _fiche_univers_doujinshis(:one)
  end

  test "should get index" do
    get _fiche_univers_doujinshis_url
    assert_response :success
  end

  test "should get new" do
    get new__fiche_univers_doujinshi_url
    assert_response :success
  end

  test "should create _fiche_univers_doujinshi" do
    assert_difference("FicheUniversDoujinshi.count") do
      post _fiche_univers_doujinshis_url, params: { _fiche_univers_doujinshi: { name: @_fiche_univers_doujinshi.name } }
    end

    assert_redirected_to _fiche_univers_doujinshi_url(FicheUniversDoujinshi.last)
  end

  test "should show _fiche_univers_doujinshi" do
    get _fiche_univers_doujinshi_url(@_fiche_univers_doujinshi)
    assert_response :success
  end

  test "should get edit" do
    get edit__fiche_univers_doujinshi_url(@_fiche_univers_doujinshi)
    assert_response :success
  end

  test "should update _fiche_univers_doujinshi" do
    patch _fiche_univers_doujinshi_url(@_fiche_univers_doujinshi), params: { _fiche_univers_doujinshi: { name: @_fiche_univers_doujinshi.name } }
    assert_redirected_to _fiche_univers_doujinshi_url(@_fiche_univers_doujinshi)
  end

  test "should destroy _fiche_univers_doujinshi" do
    assert_difference("FicheUniversDoujinshi.count", -1) do
      delete _fiche_univers_doujinshi_url(@_fiche_univers_doujinshi)
    end

    assert_redirected_to _fiche_univers_doujinshis_url
  end
end
