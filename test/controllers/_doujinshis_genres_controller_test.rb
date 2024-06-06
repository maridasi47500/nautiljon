require "test_helper"

class DoujinshisGenresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_genre = _doujinshis_genres(:one)
  end

  test "should get index" do
    get _doujinshis_genres_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_genre_url
    assert_response :success
  end

  test "should create _doujinshis_genre" do
    assert_difference("DoujinshisGenre.count") do
      post _doujinshis_genres_url, params: { _doujinshis_genre: { name: @_doujinshis_genre.name } }
    end

    assert_redirected_to _doujinshis_genre_url(DoujinshisGenre.last)
  end

  test "should show _doujinshis_genre" do
    get _doujinshis_genre_url(@_doujinshis_genre)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_genre_url(@_doujinshis_genre)
    assert_response :success
  end

  test "should update _doujinshis_genre" do
    patch _doujinshis_genre_url(@_doujinshis_genre), params: { _doujinshis_genre: { name: @_doujinshis_genre.name } }
    assert_redirected_to _doujinshis_genre_url(@_doujinshis_genre)
  end

  test "should destroy _doujinshis_genre" do
    assert_difference("DoujinshisGenre.count", -1) do
      delete _doujinshis_genre_url(@_doujinshis_genre)
    end

    assert_redirected_to _doujinshis_genres_url
  end
end
