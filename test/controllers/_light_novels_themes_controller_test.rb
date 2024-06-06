require "test_helper"

class LightNovelsThemesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_theme = _light_novels_themes(:one)
  end

  test "should get index" do
    get _light_novels_themes_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_theme_url
    assert_response :success
  end

  test "should create _light_novels_theme" do
    assert_difference("LightNovelsTheme.count") do
      post _light_novels_themes_url, params: { _light_novels_theme: { name: @_light_novels_theme.name } }
    end

    assert_redirected_to _light_novels_theme_url(LightNovelsTheme.last)
  end

  test "should show _light_novels_theme" do
    get _light_novels_theme_url(@_light_novels_theme)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_theme_url(@_light_novels_theme)
    assert_response :success
  end

  test "should update _light_novels_theme" do
    patch _light_novels_theme_url(@_light_novels_theme), params: { _light_novels_theme: { name: @_light_novels_theme.name } }
    assert_redirected_to _light_novels_theme_url(@_light_novels_theme)
  end

  test "should destroy _light_novels_theme" do
    assert_difference("LightNovelsTheme.count", -1) do
      delete _light_novels_theme_url(@_light_novels_theme)
    end

    assert_redirected_to _light_novels_themes_url
  end
end
