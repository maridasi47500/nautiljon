require "test_helper"

class LivresPaysThemesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_pays_theme = _livres_pays_themes(:one)
  end

  test "should get index" do
    get _livres_pays_themes_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_pays_theme_url
    assert_response :success
  end

  test "should create _livres_pays_theme" do
    assert_difference("LivresPaysTheme.count") do
      post _livres_pays_themes_url, params: { _livres_pays_theme: { name: @_livres_pays_theme.name } }
    end

    assert_redirected_to _livres_pays_theme_url(LivresPaysTheme.last)
  end

  test "should show _livres_pays_theme" do
    get _livres_pays_theme_url(@_livres_pays_theme)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_pays_theme_url(@_livres_pays_theme)
    assert_response :success
  end

  test "should update _livres_pays_theme" do
    patch _livres_pays_theme_url(@_livres_pays_theme), params: { _livres_pays_theme: { name: @_livres_pays_theme.name } }
    assert_redirected_to _livres_pays_theme_url(@_livres_pays_theme)
  end

  test "should destroy _livres_pays_theme" do
    assert_difference("LivresPaysTheme.count", -1) do
      delete _livres_pays_theme_url(@_livres_pays_theme)
    end

    assert_redirected_to _livres_pays_themes_url
  end
end
