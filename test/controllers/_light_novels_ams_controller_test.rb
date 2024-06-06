require "test_helper"

class LightNovelsAmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_am = _light_novels_ams(:one)
  end

  test "should get index" do
    get _light_novels_ams_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_am_url
    assert_response :success
  end

  test "should create _light_novels_am" do
    assert_difference("LightNovelsAm.count") do
      post _light_novels_ams_url, params: { _light_novels_am: { name: @_light_novels_am.name } }
    end

    assert_redirected_to _light_novels_am_url(LightNovelsAm.last)
  end

  test "should show _light_novels_am" do
    get _light_novels_am_url(@_light_novels_am)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_am_url(@_light_novels_am)
    assert_response :success
  end

  test "should update _light_novels_am" do
    patch _light_novels_am_url(@_light_novels_am), params: { _light_novels_am: { name: @_light_novels_am.name } }
    assert_redirected_to _light_novels_am_url(@_light_novels_am)
  end

  test "should destroy _light_novels_am" do
    assert_difference("LightNovelsAm.count", -1) do
      delete _light_novels_am_url(@_light_novels_am)
    end

    assert_redirected_to _light_novels_ams_url
  end
end
