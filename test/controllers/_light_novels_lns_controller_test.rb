require "test_helper"

class LightNovelsLnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_ln = _light_novels_lns(:one)
  end

  test "should get index" do
    get _light_novels_lns_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_ln_url
    assert_response :success
  end

  test "should create _light_novels_ln" do
    assert_difference("LightNovelsLn.count") do
      post _light_novels_lns_url, params: { _light_novels_ln: { name: @_light_novels_ln.name } }
    end

    assert_redirected_to _light_novels_ln_url(LightNovelsLn.last)
  end

  test "should show _light_novels_ln" do
    get _light_novels_ln_url(@_light_novels_ln)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_ln_url(@_light_novels_ln)
    assert_response :success
  end

  test "should update _light_novels_ln" do
    patch _light_novels_ln_url(@_light_novels_ln), params: { _light_novels_ln: { name: @_light_novels_ln.name } }
    assert_redirected_to _light_novels_ln_url(@_light_novels_ln)
  end

  test "should destroy _light_novels_ln" do
    assert_difference("LightNovelsLn.count", -1) do
      delete _light_novels_ln_url(@_light_novels_ln)
    end

    assert_redirected_to _light_novels_lns_url
  end
end
