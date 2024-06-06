require "test_helper"

class DoujinshisPersoPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_perso_plu = _doujinshis_perso_plus(:one)
  end

  test "should get index" do
    get _doujinshis_perso_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_perso_plu_url
    assert_response :success
  end

  test "should create _doujinshis_perso_plu" do
    assert_difference("DoujinshisPersoPlu.count") do
      post _doujinshis_perso_plus_url, params: { _doujinshis_perso_plu: { name: @_doujinshis_perso_plu.name } }
    end

    assert_redirected_to _doujinshis_perso_plu_url(DoujinshisPersoPlu.last)
  end

  test "should show _doujinshis_perso_plu" do
    get _doujinshis_perso_plu_url(@_doujinshis_perso_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_perso_plu_url(@_doujinshis_perso_plu)
    assert_response :success
  end

  test "should update _doujinshis_perso_plu" do
    patch _doujinshis_perso_plu_url(@_doujinshis_perso_plu), params: { _doujinshis_perso_plu: { name: @_doujinshis_perso_plu.name } }
    assert_redirected_to _doujinshis_perso_plu_url(@_doujinshis_perso_plu)
  end

  test "should destroy _doujinshis_perso_plu" do
    assert_difference("DoujinshisPersoPlu.count", -1) do
      delete _doujinshis_perso_plu_url(@_doujinshis_perso_plu)
    end

    assert_redirected_to _doujinshis_perso_plus_url
  end
end
