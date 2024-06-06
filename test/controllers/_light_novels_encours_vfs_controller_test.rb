require "test_helper"

class LightNovelsEncoursVfsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_encours_vf = _light_novels_encours_vfs(:one)
  end

  test "should get index" do
    get _light_novels_encours_vfs_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_encours_vf_url
    assert_response :success
  end

  test "should create _light_novels_encours_vf" do
    assert_difference("LightNovelsEncoursVf.count") do
      post _light_novels_encours_vfs_url, params: { _light_novels_encours_vf: { name: @_light_novels_encours_vf.name } }
    end

    assert_redirected_to _light_novels_encours_vf_url(LightNovelsEncoursVf.last)
  end

  test "should show _light_novels_encours_vf" do
    get _light_novels_encours_vf_url(@_light_novels_encours_vf)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_encours_vf_url(@_light_novels_encours_vf)
    assert_response :success
  end

  test "should update _light_novels_encours_vf" do
    patch _light_novels_encours_vf_url(@_light_novels_encours_vf), params: { _light_novels_encours_vf: { name: @_light_novels_encours_vf.name } }
    assert_redirected_to _light_novels_encours_vf_url(@_light_novels_encours_vf)
  end

  test "should destroy _light_novels_encours_vf" do
    assert_difference("LightNovelsEncoursVf.count", -1) do
      delete _light_novels_encours_vf_url(@_light_novels_encours_vf)
    end

    assert_redirected_to _light_novels_encours_vfs_url
  end
end
