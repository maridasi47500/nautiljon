require "test_helper"

class JeuxVideosThemesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_theme = _jeux_videos_themes(:one)
  end

  test "should get index" do
    get _jeux_videos_themes_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_theme_url
    assert_response :success
  end

  test "should create _jeux_videos_theme" do
    assert_difference("JeuxVideosTheme.count") do
      post _jeux_videos_themes_url, params: { _jeux_videos_theme: { name: @_jeux_videos_theme.name } }
    end

    assert_redirected_to _jeux_videos_theme_url(JeuxVideosTheme.last)
  end

  test "should show _jeux_videos_theme" do
    get _jeux_videos_theme_url(@_jeux_videos_theme)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_theme_url(@_jeux_videos_theme)
    assert_response :success
  end

  test "should update _jeux_videos_theme" do
    patch _jeux_videos_theme_url(@_jeux_videos_theme), params: { _jeux_videos_theme: { name: @_jeux_videos_theme.name } }
    assert_redirected_to _jeux_videos_theme_url(@_jeux_videos_theme)
  end

  test "should destroy _jeux_videos_theme" do
    assert_difference("JeuxVideosTheme.count", -1) do
      delete _jeux_videos_theme_url(@_jeux_videos_theme)
    end

    assert_redirected_to _jeux_videos_themes_url
  end
end
