require "test_helper"

class AnimesAnimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_anime = animes_animes(:one)
  end

  test "should get index" do
    get animes_animes_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_anime_url
    assert_response :success
  end

  test "should create animes_anime" do
    assert_difference("AnimesAnime.count") do
      post animes_animes_url, params: { animes_anime: { name: @animes_anime.name } }
    end

    assert_redirected_to animes_anime_url(AnimesAnime.last)
  end

  test "should show animes_anime" do
    get animes_anime_url(@animes_anime)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_anime_url(@animes_anime)
    assert_response :success
  end

  test "should update animes_anime" do
    patch animes_anime_url(@animes_anime), params: { animes_anime: { name: @animes_anime.name } }
    assert_redirected_to animes_anime_url(@animes_anime)
  end

  test "should destroy animes_anime" do
    assert_difference("AnimesAnime.count", -1) do
      delete animes_anime_url(@animes_anime)
    end

    assert_redirected_to animes_animes_url
  end
end
