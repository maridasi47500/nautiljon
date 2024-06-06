require "test_helper"

class LightNovelsAnimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_anime = _light_novels_animes(:one)
  end

  test "should get index" do
    get _light_novels_animes_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_anime_url
    assert_response :success
  end

  test "should create _light_novels_anime" do
    assert_difference("LightNovelsAnime.count") do
      post _light_novels_animes_url, params: { _light_novels_anime: { name: @_light_novels_anime.name } }
    end

    assert_redirected_to _light_novels_anime_url(LightNovelsAnime.last)
  end

  test "should show _light_novels_anime" do
    get _light_novels_anime_url(@_light_novels_anime)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_anime_url(@_light_novels_anime)
    assert_response :success
  end

  test "should update _light_novels_anime" do
    patch _light_novels_anime_url(@_light_novels_anime), params: { _light_novels_anime: { name: @_light_novels_anime.name } }
    assert_redirected_to _light_novels_anime_url(@_light_novels_anime)
  end

  test "should destroy _light_novels_anime" do
    assert_difference("LightNovelsAnime.count", -1) do
      delete _light_novels_anime_url(@_light_novels_anime)
    end

    assert_redirected_to _light_novels_animes_url
  end
end
