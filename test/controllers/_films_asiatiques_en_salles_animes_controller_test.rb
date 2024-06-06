require "test_helper"

class FilmsAsiatiquesEnSallesAnimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_en_salles_anime = _films_asiatiques_en_salles_animes(:one)
  end

  test "should get index" do
    get _films_asiatiques_en_salles_animes_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_en_salles_anime_url
    assert_response :success
  end

  test "should create _films_asiatiques_en_salles_anime" do
    assert_difference("FilmsAsiatiquesEnSallesAnime.count") do
      post _films_asiatiques_en_salles_animes_url, params: { _films_asiatiques_en_salles_anime: { name: @_films_asiatiques_en_salles_anime.name } }
    end

    assert_redirected_to _films_asiatiques_en_salles_anime_url(FilmsAsiatiquesEnSallesAnime.last)
  end

  test "should show _films_asiatiques_en_salles_anime" do
    get _films_asiatiques_en_salles_anime_url(@_films_asiatiques_en_salles_anime)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_en_salles_anime_url(@_films_asiatiques_en_salles_anime)
    assert_response :success
  end

  test "should update _films_asiatiques_en_salles_anime" do
    patch _films_asiatiques_en_salles_anime_url(@_films_asiatiques_en_salles_anime), params: { _films_asiatiques_en_salles_anime: { name: @_films_asiatiques_en_salles_anime.name } }
    assert_redirected_to _films_asiatiques_en_salles_anime_url(@_films_asiatiques_en_salles_anime)
  end

  test "should destroy _films_asiatiques_en_salles_anime" do
    assert_difference("FilmsAsiatiquesEnSallesAnime.count", -1) do
      delete _films_asiatiques_en_salles_anime_url(@_films_asiatiques_en_salles_anime)
    end

    assert_redirected_to _films_asiatiques_en_salles_animes_url
  end
end
