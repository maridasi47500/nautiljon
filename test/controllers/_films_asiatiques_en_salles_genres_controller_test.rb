require "test_helper"

class FilmsAsiatiquesEnSallesGenresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_en_salles_genre = _films_asiatiques_en_salles_genres(:one)
  end

  test "should get index" do
    get _films_asiatiques_en_salles_genres_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_en_salles_genre_url
    assert_response :success
  end

  test "should create _films_asiatiques_en_salles_genre" do
    assert_difference("FilmsAsiatiquesEnSallesGenre.count") do
      post _films_asiatiques_en_salles_genres_url, params: { _films_asiatiques_en_salles_genre: { name: @_films_asiatiques_en_salles_genre.name } }
    end

    assert_redirected_to _films_asiatiques_en_salles_genre_url(FilmsAsiatiquesEnSallesGenre.last)
  end

  test "should show _films_asiatiques_en_salles_genre" do
    get _films_asiatiques_en_salles_genre_url(@_films_asiatiques_en_salles_genre)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_en_salles_genre_url(@_films_asiatiques_en_salles_genre)
    assert_response :success
  end

  test "should update _films_asiatiques_en_salles_genre" do
    patch _films_asiatiques_en_salles_genre_url(@_films_asiatiques_en_salles_genre), params: { _films_asiatiques_en_salles_genre: { name: @_films_asiatiques_en_salles_genre.name } }
    assert_redirected_to _films_asiatiques_en_salles_genre_url(@_films_asiatiques_en_salles_genre)
  end

  test "should destroy _films_asiatiques_en_salles_genre" do
    assert_difference("FilmsAsiatiquesEnSallesGenre.count", -1) do
      delete _films_asiatiques_en_salles_genre_url(@_films_asiatiques_en_salles_genre)
    end

    assert_redirected_to _films_asiatiques_en_salles_genres_url
  end
end
