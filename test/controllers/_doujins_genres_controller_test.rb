require "test_helper"

class DoujinsGenresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujins_genre = _doujins_genres(:one)
  end

  test "should get index" do
    get _doujins_genres_url
    assert_response :success
  end

  test "should get new" do
    get new__doujins_genre_url
    assert_response :success
  end

  test "should create _doujins_genre" do
    assert_difference("DoujinsGenre.count") do
      post _doujins_genres_url, params: { _doujins_genre: { name: @_doujins_genre.name } }
    end

    assert_redirected_to _doujins_genre_url(DoujinsGenre.last)
  end

  test "should show _doujins_genre" do
    get _doujins_genre_url(@_doujins_genre)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujins_genre_url(@_doujins_genre)
    assert_response :success
  end

  test "should update _doujins_genre" do
    patch _doujins_genre_url(@_doujins_genre), params: { _doujins_genre: { name: @_doujins_genre.name } }
    assert_redirected_to _doujins_genre_url(@_doujins_genre)
  end

  test "should destroy _doujins_genre" do
    assert_difference("DoujinsGenre.count", -1) do
      delete _doujins_genre_url(@_doujins_genre)
    end

    assert_redirected_to _doujins_genres_url
  end
end
