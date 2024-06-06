require "test_helper"

class JeuxVideosAnimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_anime = _jeux_videos_animes(:one)
  end

  test "should get index" do
    get _jeux_videos_animes_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_anime_url
    assert_response :success
  end

  test "should create _jeux_videos_anime" do
    assert_difference("JeuxVideosAnime.count") do
      post _jeux_videos_animes_url, params: { _jeux_videos_anime: { name: @_jeux_videos_anime.name } }
    end

    assert_redirected_to _jeux_videos_anime_url(JeuxVideosAnime.last)
  end

  test "should show _jeux_videos_anime" do
    get _jeux_videos_anime_url(@_jeux_videos_anime)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_anime_url(@_jeux_videos_anime)
    assert_response :success
  end

  test "should update _jeux_videos_anime" do
    patch _jeux_videos_anime_url(@_jeux_videos_anime), params: { _jeux_videos_anime: { name: @_jeux_videos_anime.name } }
    assert_redirected_to _jeux_videos_anime_url(@_jeux_videos_anime)
  end

  test "should destroy _jeux_videos_anime" do
    assert_difference("JeuxVideosAnime.count", -1) do
      delete _jeux_videos_anime_url(@_jeux_videos_anime)
    end

    assert_redirected_to _jeux_videos_animes_url
  end
end
