require "test_helper"

class FilmsAsiatiquesAnimePlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_anime_plu = _films_asiatiques_anime_plus(:one)
  end

  test "should get index" do
    get _films_asiatiques_anime_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_anime_plu_url
    assert_response :success
  end

  test "should create _films_asiatiques_anime_plu" do
    assert_difference("FilmsAsiatiquesAnimePlu.count") do
      post _films_asiatiques_anime_plus_url, params: { _films_asiatiques_anime_plu: { name: @_films_asiatiques_anime_plu.name } }
    end

    assert_redirected_to _films_asiatiques_anime_plu_url(FilmsAsiatiquesAnimePlu.last)
  end

  test "should show _films_asiatiques_anime_plu" do
    get _films_asiatiques_anime_plu_url(@_films_asiatiques_anime_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_anime_plu_url(@_films_asiatiques_anime_plu)
    assert_response :success
  end

  test "should update _films_asiatiques_anime_plu" do
    patch _films_asiatiques_anime_plu_url(@_films_asiatiques_anime_plu), params: { _films_asiatiques_anime_plu: { name: @_films_asiatiques_anime_plu.name } }
    assert_redirected_to _films_asiatiques_anime_plu_url(@_films_asiatiques_anime_plu)
  end

  test "should destroy _films_asiatiques_anime_plu" do
    assert_difference("FilmsAsiatiquesAnimePlu.count", -1) do
      delete _films_asiatiques_anime_plu_url(@_films_asiatiques_anime_plu)
    end

    assert_redirected_to _films_asiatiques_anime_plus_url
  end
end
