require "test_helper"

class LightNovelsEditeursVfsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_editeurs_vf = _light_novels_editeurs_vfs(:one)
  end

  test "should get index" do
    get _light_novels_editeurs_vfs_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_editeurs_vf_url
    assert_response :success
  end

  test "should create _light_novels_editeurs_vf" do
    assert_difference("LightNovelsEditeursVf.count") do
      post _light_novels_editeurs_vfs_url, params: { _light_novels_editeurs_vf: { name: @_light_novels_editeurs_vf.name } }
    end

    assert_redirected_to _light_novels_editeurs_vf_url(LightNovelsEditeursVf.last)
  end

  test "should show _light_novels_editeurs_vf" do
    get _light_novels_editeurs_vf_url(@_light_novels_editeurs_vf)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_editeurs_vf_url(@_light_novels_editeurs_vf)
    assert_response :success
  end

  test "should update _light_novels_editeurs_vf" do
    patch _light_novels_editeurs_vf_url(@_light_novels_editeurs_vf), params: { _light_novels_editeurs_vf: { name: @_light_novels_editeurs_vf.name } }
    assert_redirected_to _light_novels_editeurs_vf_url(@_light_novels_editeurs_vf)
  end

  test "should destroy _light_novels_editeurs_vf" do
    assert_difference("LightNovelsEditeursVf.count", -1) do
      delete _light_novels_editeurs_vf_url(@_light_novels_editeurs_vf)
    end

    assert_redirected_to _light_novels_editeurs_vfs_url
  end
end
