require "test_helper"

class LightNovelsOstsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_ost = _light_novels_osts(:one)
  end

  test "should get index" do
    get _light_novels_osts_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_ost_url
    assert_response :success
  end

  test "should create _light_novels_ost" do
    assert_difference("LightNovelsOst.count") do
      post _light_novels_osts_url, params: { _light_novels_ost: { name: @_light_novels_ost.name } }
    end

    assert_redirected_to _light_novels_ost_url(LightNovelsOst.last)
  end

  test "should show _light_novels_ost" do
    get _light_novels_ost_url(@_light_novels_ost)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_ost_url(@_light_novels_ost)
    assert_response :success
  end

  test "should update _light_novels_ost" do
    patch _light_novels_ost_url(@_light_novels_ost), params: { _light_novels_ost: { name: @_light_novels_ost.name } }
    assert_redirected_to _light_novels_ost_url(@_light_novels_ost)
  end

  test "should destroy _light_novels_ost" do
    assert_difference("LightNovelsOst.count", -1) do
      delete _light_novels_ost_url(@_light_novels_ost)
    end

    assert_redirected_to _light_novels_osts_url
  end
end
