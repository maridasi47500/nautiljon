require "test_helper"

class LightNovelsPublicAvertisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_public_averti = _light_novels_public_avertis(:one)
  end

  test "should get index" do
    get _light_novels_public_avertis_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_public_averti_url
    assert_response :success
  end

  test "should create _light_novels_public_averti" do
    assert_difference("LightNovelsPublicAverti.count") do
      post _light_novels_public_avertis_url, params: { _light_novels_public_averti: { name: @_light_novels_public_averti.name } }
    end

    assert_redirected_to _light_novels_public_averti_url(LightNovelsPublicAverti.last)
  end

  test "should show _light_novels_public_averti" do
    get _light_novels_public_averti_url(@_light_novels_public_averti)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_public_averti_url(@_light_novels_public_averti)
    assert_response :success
  end

  test "should update _light_novels_public_averti" do
    patch _light_novels_public_averti_url(@_light_novels_public_averti), params: { _light_novels_public_averti: { name: @_light_novels_public_averti.name } }
    assert_redirected_to _light_novels_public_averti_url(@_light_novels_public_averti)
  end

  test "should destroy _light_novels_public_averti" do
    assert_difference("LightNovelsPublicAverti.count", -1) do
      delete _light_novels_public_averti_url(@_light_novels_public_averti)
    end

    assert_redirected_to _light_novels_public_avertis_url
  end
end
