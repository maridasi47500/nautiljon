require "test_helper"

class DramasThemesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_theme = _dramas_themes(:one)
  end

  test "should get index" do
    get _dramas_themes_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_theme_url
    assert_response :success
  end

  test "should create _dramas_theme" do
    assert_difference("DramasTheme.count") do
      post _dramas_themes_url, params: { _dramas_theme: { name: @_dramas_theme.name } }
    end

    assert_redirected_to _dramas_theme_url(DramasTheme.last)
  end

  test "should show _dramas_theme" do
    get _dramas_theme_url(@_dramas_theme)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_theme_url(@_dramas_theme)
    assert_response :success
  end

  test "should update _dramas_theme" do
    patch _dramas_theme_url(@_dramas_theme), params: { _dramas_theme: { name: @_dramas_theme.name } }
    assert_redirected_to _dramas_theme_url(@_dramas_theme)
  end

  test "should destroy _dramas_theme" do
    assert_difference("DramasTheme.count", -1) do
      delete _dramas_theme_url(@_dramas_theme)
    end

    assert_redirected_to _dramas_themes_url
  end
end
