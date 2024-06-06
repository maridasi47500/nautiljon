require "test_helper"

class AnimesThemesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_theme = animes_themes(:one)
  end

  test "should get index" do
    get animes_themes_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_theme_url
    assert_response :success
  end

  test "should create animes_theme" do
    assert_difference("AnimesTheme.count") do
      post animes_themes_url, params: { animes_theme: { name: @animes_theme.name } }
    end

    assert_redirected_to animes_theme_url(AnimesTheme.last)
  end

  test "should show animes_theme" do
    get animes_theme_url(@animes_theme)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_theme_url(@animes_theme)
    assert_response :success
  end

  test "should update animes_theme" do
    patch animes_theme_url(@animes_theme), params: { animes_theme: { name: @animes_theme.name } }
    assert_redirected_to animes_theme_url(@animes_theme)
  end

  test "should destroy animes_theme" do
    assert_difference("AnimesTheme.count", -1) do
      delete animes_theme_url(@animes_theme)
    end

    assert_redirected_to animes_themes_url
  end
end
