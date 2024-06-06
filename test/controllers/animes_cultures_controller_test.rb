require "test_helper"

class AnimesCulturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_culture = animes_cultures(:one)
  end

  test "should get index" do
    get animes_cultures_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_culture_url
    assert_response :success
  end

  test "should create animes_culture" do
    assert_difference("AnimesCulture.count") do
      post animes_cultures_url, params: { animes_culture: { name: @animes_culture.name } }
    end

    assert_redirected_to animes_culture_url(AnimesCulture.last)
  end

  test "should show animes_culture" do
    get animes_culture_url(@animes_culture)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_culture_url(@animes_culture)
    assert_response :success
  end

  test "should update animes_culture" do
    patch animes_culture_url(@animes_culture), params: { animes_culture: { name: @animes_culture.name } }
    assert_redirected_to animes_culture_url(@animes_culture)
  end

  test "should destroy animes_culture" do
    assert_difference("AnimesCulture.count", -1) do
      delete animes_culture_url(@animes_culture)
    end

    assert_redirected_to animes_cultures_url
  end
end
