require "test_helper"

class LightNovelsGenresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_genre = _light_novels_genres(:one)
  end

  test "should get index" do
    get _light_novels_genres_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_genre_url
    assert_response :success
  end

  test "should create _light_novels_genre" do
    assert_difference("LightNovelsGenre.count") do
      post _light_novels_genres_url, params: { _light_novels_genre: { name: @_light_novels_genre.name } }
    end

    assert_redirected_to _light_novels_genre_url(LightNovelsGenre.last)
  end

  test "should show _light_novels_genre" do
    get _light_novels_genre_url(@_light_novels_genre)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_genre_url(@_light_novels_genre)
    assert_response :success
  end

  test "should update _light_novels_genre" do
    patch _light_novels_genre_url(@_light_novels_genre), params: { _light_novels_genre: { name: @_light_novels_genre.name } }
    assert_redirected_to _light_novels_genre_url(@_light_novels_genre)
  end

  test "should destroy _light_novels_genre" do
    assert_difference("LightNovelsGenre.count", -1) do
      delete _light_novels_genre_url(@_light_novels_genre)
    end

    assert_redirected_to _light_novels_genres_url
  end
end
