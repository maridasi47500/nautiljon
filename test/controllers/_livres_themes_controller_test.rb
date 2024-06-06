require "test_helper"

class LivresThemesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_theme = _livres_themes(:one)
  end

  test "should get index" do
    get _livres_themes_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_theme_url
    assert_response :success
  end

  test "should create _livres_theme" do
    assert_difference("LivresTheme.count") do
      post _livres_themes_url, params: { _livres_theme: { name: @_livres_theme.name } }
    end

    assert_redirected_to _livres_theme_url(LivresTheme.last)
  end

  test "should show _livres_theme" do
    get _livres_theme_url(@_livres_theme)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_theme_url(@_livres_theme)
    assert_response :success
  end

  test "should update _livres_theme" do
    patch _livres_theme_url(@_livres_theme), params: { _livres_theme: { name: @_livres_theme.name } }
    assert_redirected_to _livres_theme_url(@_livres_theme)
  end

  test "should destroy _livres_theme" do
    assert_difference("LivresTheme.count", -1) do
      delete _livres_theme_url(@_livres_theme)
    end

    assert_redirected_to _livres_themes_url
  end
end
