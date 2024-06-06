require "test_helper"

class JeuxVideosGenresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_genre = _jeux_videos_genres(:one)
  end

  test "should get index" do
    get _jeux_videos_genres_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_genre_url
    assert_response :success
  end

  test "should create _jeux_videos_genre" do
    assert_difference("JeuxVideosGenre.count") do
      post _jeux_videos_genres_url, params: { _jeux_videos_genre: { name: @_jeux_videos_genre.name } }
    end

    assert_redirected_to _jeux_videos_genre_url(JeuxVideosGenre.last)
  end

  test "should show _jeux_videos_genre" do
    get _jeux_videos_genre_url(@_jeux_videos_genre)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_genre_url(@_jeux_videos_genre)
    assert_response :success
  end

  test "should update _jeux_videos_genre" do
    patch _jeux_videos_genre_url(@_jeux_videos_genre), params: { _jeux_videos_genre: { name: @_jeux_videos_genre.name } }
    assert_redirected_to _jeux_videos_genre_url(@_jeux_videos_genre)
  end

  test "should destroy _jeux_videos_genre" do
    assert_difference("JeuxVideosGenre.count", -1) do
      delete _jeux_videos_genre_url(@_jeux_videos_genre)
    end

    assert_redirected_to _jeux_videos_genres_url
  end
end
