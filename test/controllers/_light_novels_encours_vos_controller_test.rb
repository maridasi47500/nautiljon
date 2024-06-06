require "test_helper"

class LightNovelsEncoursVosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_encours_vo = _light_novels_encours_vos(:one)
  end

  test "should get index" do
    get _light_novels_encours_vos_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_encours_vo_url
    assert_response :success
  end

  test "should create _light_novels_encours_vo" do
    assert_difference("LightNovelsEncoursVo.count") do
      post _light_novels_encours_vos_url, params: { _light_novels_encours_vo: { name: @_light_novels_encours_vo.name } }
    end

    assert_redirected_to _light_novels_encours_vo_url(LightNovelsEncoursVo.last)
  end

  test "should show _light_novels_encours_vo" do
    get _light_novels_encours_vo_url(@_light_novels_encours_vo)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_encours_vo_url(@_light_novels_encours_vo)
    assert_response :success
  end

  test "should update _light_novels_encours_vo" do
    patch _light_novels_encours_vo_url(@_light_novels_encours_vo), params: { _light_novels_encours_vo: { name: @_light_novels_encours_vo.name } }
    assert_redirected_to _light_novels_encours_vo_url(@_light_novels_encours_vo)
  end

  test "should destroy _light_novels_encours_vo" do
    assert_difference("LightNovelsEncoursVo.count", -1) do
      delete _light_novels_encours_vo_url(@_light_novels_encours_vo)
    end

    assert_redirected_to _light_novels_encours_vos_url
  end
end
