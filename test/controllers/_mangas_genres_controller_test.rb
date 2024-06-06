require "test_helper"

class MangasGenresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_genre = _mangas_genres(:one)
  end

  test "should get index" do
    get _mangas_genres_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_genre_url
    assert_response :success
  end

  test "should create _mangas_genre" do
    assert_difference("MangasGenre.count") do
      post _mangas_genres_url, params: { _mangas_genre: { name: @_mangas_genre.name } }
    end

    assert_redirected_to _mangas_genre_url(MangasGenre.last)
  end

  test "should show _mangas_genre" do
    get _mangas_genre_url(@_mangas_genre)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_genre_url(@_mangas_genre)
    assert_response :success
  end

  test "should update _mangas_genre" do
    patch _mangas_genre_url(@_mangas_genre), params: { _mangas_genre: { name: @_mangas_genre.name } }
    assert_redirected_to _mangas_genre_url(@_mangas_genre)
  end

  test "should destroy _mangas_genre" do
    assert_difference("MangasGenre.count", -1) do
      delete _mangas_genre_url(@_mangas_genre)
    end

    assert_redirected_to _mangas_genres_url
  end
end
