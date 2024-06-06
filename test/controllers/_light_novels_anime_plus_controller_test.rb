require "test_helper"

class LightNovelsAnimePlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_anime_plu = _light_novels_anime_plus(:one)
  end

  test "should get index" do
    get _light_novels_anime_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_anime_plu_url
    assert_response :success
  end

  test "should create _light_novels_anime_plu" do
    assert_difference("LightNovelsAnimePlu.count") do
      post _light_novels_anime_plus_url, params: { _light_novels_anime_plu: { name: @_light_novels_anime_plu.name } }
    end

    assert_redirected_to _light_novels_anime_plu_url(LightNovelsAnimePlu.last)
  end

  test "should show _light_novels_anime_plu" do
    get _light_novels_anime_plu_url(@_light_novels_anime_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_anime_plu_url(@_light_novels_anime_plu)
    assert_response :success
  end

  test "should update _light_novels_anime_plu" do
    patch _light_novels_anime_plu_url(@_light_novels_anime_plu), params: { _light_novels_anime_plu: { name: @_light_novels_anime_plu.name } }
    assert_redirected_to _light_novels_anime_plu_url(@_light_novels_anime_plu)
  end

  test "should destroy _light_novels_anime_plu" do
    assert_difference("LightNovelsAnimePlu.count", -1) do
      delete _light_novels_anime_plu_url(@_light_novels_anime_plu)
    end

    assert_redirected_to _light_novels_anime_plus_url
  end
end
