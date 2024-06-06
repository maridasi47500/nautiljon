require "test_helper"

class LightNovelsEditeursVosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_editeurs_vo = _light_novels_editeurs_vos(:one)
  end

  test "should get index" do
    get _light_novels_editeurs_vos_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_editeurs_vo_url
    assert_response :success
  end

  test "should create _light_novels_editeurs_vo" do
    assert_difference("LightNovelsEditeursVo.count") do
      post _light_novels_editeurs_vos_url, params: { _light_novels_editeurs_vo: { name: @_light_novels_editeurs_vo.name } }
    end

    assert_redirected_to _light_novels_editeurs_vo_url(LightNovelsEditeursVo.last)
  end

  test "should show _light_novels_editeurs_vo" do
    get _light_novels_editeurs_vo_url(@_light_novels_editeurs_vo)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_editeurs_vo_url(@_light_novels_editeurs_vo)
    assert_response :success
  end

  test "should update _light_novels_editeurs_vo" do
    patch _light_novels_editeurs_vo_url(@_light_novels_editeurs_vo), params: { _light_novels_editeurs_vo: { name: @_light_novels_editeurs_vo.name } }
    assert_redirected_to _light_novels_editeurs_vo_url(@_light_novels_editeurs_vo)
  end

  test "should destroy _light_novels_editeurs_vo" do
    assert_difference("LightNovelsEditeursVo.count", -1) do
      delete _light_novels_editeurs_vo_url(@_light_novels_editeurs_vo)
    end

    assert_redirected_to _light_novels_editeurs_vos_url
  end
end
