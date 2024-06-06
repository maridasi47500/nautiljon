require "test_helper"

class LightNovelsJvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_jv = _light_novels_jvs(:one)
  end

  test "should get index" do
    get _light_novels_jvs_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_jv_url
    assert_response :success
  end

  test "should create _light_novels_jv" do
    assert_difference("LightNovelsJv.count") do
      post _light_novels_jvs_url, params: { _light_novels_jv: { name: @_light_novels_jv.name } }
    end

    assert_redirected_to _light_novels_jv_url(LightNovelsJv.last)
  end

  test "should show _light_novels_jv" do
    get _light_novels_jv_url(@_light_novels_jv)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_jv_url(@_light_novels_jv)
    assert_response :success
  end

  test "should update _light_novels_jv" do
    patch _light_novels_jv_url(@_light_novels_jv), params: { _light_novels_jv: { name: @_light_novels_jv.name } }
    assert_redirected_to _light_novels_jv_url(@_light_novels_jv)
  end

  test "should destroy _light_novels_jv" do
    assert_difference("LightNovelsJv.count", -1) do
      delete _light_novels_jv_url(@_light_novels_jv)
    end

    assert_redirected_to _light_novels_jvs_url
  end
end
