require "test_helper"

class FilmsAsiatiquesThemesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_theme = _films_asiatiques_themes(:one)
  end

  test "should get index" do
    get _films_asiatiques_themes_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_theme_url
    assert_response :success
  end

  test "should create _films_asiatiques_theme" do
    assert_difference("FilmsAsiatiquesTheme.count") do
      post _films_asiatiques_themes_url, params: { _films_asiatiques_theme: { name: @_films_asiatiques_theme.name } }
    end

    assert_redirected_to _films_asiatiques_theme_url(FilmsAsiatiquesTheme.last)
  end

  test "should show _films_asiatiques_theme" do
    get _films_asiatiques_theme_url(@_films_asiatiques_theme)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_theme_url(@_films_asiatiques_theme)
    assert_response :success
  end

  test "should update _films_asiatiques_theme" do
    patch _films_asiatiques_theme_url(@_films_asiatiques_theme), params: { _films_asiatiques_theme: { name: @_films_asiatiques_theme.name } }
    assert_redirected_to _films_asiatiques_theme_url(@_films_asiatiques_theme)
  end

  test "should destroy _films_asiatiques_theme" do
    assert_difference("FilmsAsiatiquesTheme.count", -1) do
      delete _films_asiatiques_theme_url(@_films_asiatiques_theme)
    end

    assert_redirected_to _films_asiatiques_themes_url
  end
end
