require "test_helper"

class DoujinshisAnimePlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_anime_plu = _doujinshis_anime_plus(:one)
  end

  test "should get index" do
    get _doujinshis_anime_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_anime_plu_url
    assert_response :success
  end

  test "should create _doujinshis_anime_plu" do
    assert_difference("DoujinshisAnimePlu.count") do
      post _doujinshis_anime_plus_url, params: { _doujinshis_anime_plu: { name: @_doujinshis_anime_plu.name } }
    end

    assert_redirected_to _doujinshis_anime_plu_url(DoujinshisAnimePlu.last)
  end

  test "should show _doujinshis_anime_plu" do
    get _doujinshis_anime_plu_url(@_doujinshis_anime_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_anime_plu_url(@_doujinshis_anime_plu)
    assert_response :success
  end

  test "should update _doujinshis_anime_plu" do
    patch _doujinshis_anime_plu_url(@_doujinshis_anime_plu), params: { _doujinshis_anime_plu: { name: @_doujinshis_anime_plu.name } }
    assert_redirected_to _doujinshis_anime_plu_url(@_doujinshis_anime_plu)
  end

  test "should destroy _doujinshis_anime_plu" do
    assert_difference("DoujinshisAnimePlu.count", -1) do
      delete _doujinshis_anime_plu_url(@_doujinshis_anime_plu)
    end

    assert_redirected_to _doujinshis_anime_plus_url
  end
end
