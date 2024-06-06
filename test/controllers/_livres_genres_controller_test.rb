require "test_helper"

class LivresGenresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_genre = _livres_genres(:one)
  end

  test "should get index" do
    get _livres_genres_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_genre_url
    assert_response :success
  end

  test "should create _livres_genre" do
    assert_difference("LivresGenre.count") do
      post _livres_genres_url, params: { _livres_genre: { name: @_livres_genre.name } }
    end

    assert_redirected_to _livres_genre_url(LivresGenre.last)
  end

  test "should show _livres_genre" do
    get _livres_genre_url(@_livres_genre)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_genre_url(@_livres_genre)
    assert_response :success
  end

  test "should update _livres_genre" do
    patch _livres_genre_url(@_livres_genre), params: { _livres_genre: { name: @_livres_genre.name } }
    assert_redirected_to _livres_genre_url(@_livres_genre)
  end

  test "should destroy _livres_genre" do
    assert_difference("LivresGenre.count", -1) do
      delete _livres_genre_url(@_livres_genre)
    end

    assert_redirected_to _livres_genres_url
  end
end
