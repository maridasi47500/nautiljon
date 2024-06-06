require "test_helper"

class MangasThemesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_theme = _mangas_themes(:one)
  end

  test "should get index" do
    get _mangas_themes_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_theme_url
    assert_response :success
  end

  test "should create _mangas_theme" do
    assert_difference("MangasTheme.count") do
      post _mangas_themes_url, params: { _mangas_theme: { name: @_mangas_theme.name } }
    end

    assert_redirected_to _mangas_theme_url(MangasTheme.last)
  end

  test "should show _mangas_theme" do
    get _mangas_theme_url(@_mangas_theme)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_theme_url(@_mangas_theme)
    assert_response :success
  end

  test "should update _mangas_theme" do
    patch _mangas_theme_url(@_mangas_theme), params: { _mangas_theme: { name: @_mangas_theme.name } }
    assert_redirected_to _mangas_theme_url(@_mangas_theme)
  end

  test "should destroy _mangas_theme" do
    assert_difference("MangasTheme.count", -1) do
      delete _mangas_theme_url(@_mangas_theme)
    end

    assert_redirected_to _mangas_themes_url
  end
end
