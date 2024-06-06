require "test_helper"

class PersonnalitesGenresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnalites_genre = _personnalites_genres(:one)
  end

  test "should get index" do
    get _personnalites_genres_url
    assert_response :success
  end

  test "should get new" do
    get new__personnalites_genre_url
    assert_response :success
  end

  test "should create _personnalites_genre" do
    assert_difference("PersonnalitesGenre.count") do
      post _personnalites_genres_url, params: { _personnalites_genre: { name: @_personnalites_genre.name } }
    end

    assert_redirected_to _personnalites_genre_url(PersonnalitesGenre.last)
  end

  test "should show _personnalites_genre" do
    get _personnalites_genre_url(@_personnalites_genre)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnalites_genre_url(@_personnalites_genre)
    assert_response :success
  end

  test "should update _personnalites_genre" do
    patch _personnalites_genre_url(@_personnalites_genre), params: { _personnalites_genre: { name: @_personnalites_genre.name } }
    assert_redirected_to _personnalites_genre_url(@_personnalites_genre)
  end

  test "should destroy _personnalites_genre" do
    assert_difference("PersonnalitesGenre.count", -1) do
      delete _personnalites_genre_url(@_personnalites_genre)
    end

    assert_redirected_to _personnalites_genres_url
  end
end
