require "test_helper"

class DoujinshisThemesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_theme = _doujinshis_themes(:one)
  end

  test "should get index" do
    get _doujinshis_themes_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_theme_url
    assert_response :success
  end

  test "should create _doujinshis_theme" do
    assert_difference("DoujinshisTheme.count") do
      post _doujinshis_themes_url, params: { _doujinshis_theme: { name: @_doujinshis_theme.name } }
    end

    assert_redirected_to _doujinshis_theme_url(DoujinshisTheme.last)
  end

  test "should show _doujinshis_theme" do
    get _doujinshis_theme_url(@_doujinshis_theme)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_theme_url(@_doujinshis_theme)
    assert_response :success
  end

  test "should update _doujinshis_theme" do
    patch _doujinshis_theme_url(@_doujinshis_theme), params: { _doujinshis_theme: { name: @_doujinshis_theme.name } }
    assert_redirected_to _doujinshis_theme_url(@_doujinshis_theme)
  end

  test "should destroy _doujinshis_theme" do
    assert_difference("DoujinshisTheme.count", -1) do
      delete _doujinshis_theme_url(@_doujinshis_theme)
    end

    assert_redirected_to _doujinshis_themes_url
  end
end
