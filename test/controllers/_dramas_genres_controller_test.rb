require "test_helper"

class DramasGenresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_genre = _dramas_genres(:one)
  end

  test "should get index" do
    get _dramas_genres_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_genre_url
    assert_response :success
  end

  test "should create _dramas_genre" do
    assert_difference("DramasGenre.count") do
      post _dramas_genres_url, params: { _dramas_genre: { name: @_dramas_genre.name } }
    end

    assert_redirected_to _dramas_genre_url(DramasGenre.last)
  end

  test "should show _dramas_genre" do
    get _dramas_genre_url(@_dramas_genre)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_genre_url(@_dramas_genre)
    assert_response :success
  end

  test "should update _dramas_genre" do
    patch _dramas_genre_url(@_dramas_genre), params: { _dramas_genre: { name: @_dramas_genre.name } }
    assert_redirected_to _dramas_genre_url(@_dramas_genre)
  end

  test "should destroy _dramas_genre" do
    assert_difference("DramasGenre.count", -1) do
      delete _dramas_genre_url(@_dramas_genre)
    end

    assert_redirected_to _dramas_genres_url
  end
end
