require "test_helper"

class FilmsAsiatiquesEnSallesActualitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_en_salles_actualite = _films_asiatiques_en_salles_actualites(:one)
  end

  test "should get index" do
    get _films_asiatiques_en_salles_actualites_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_en_salles_actualite_url
    assert_response :success
  end

  test "should create _films_asiatiques_en_salles_actualite" do
    assert_difference("FilmsAsiatiquesEnSallesActualite.count") do
      post _films_asiatiques_en_salles_actualites_url, params: { _films_asiatiques_en_salles_actualite: { name: @_films_asiatiques_en_salles_actualite.name } }
    end

    assert_redirected_to _films_asiatiques_en_salles_actualite_url(FilmsAsiatiquesEnSallesActualite.last)
  end

  test "should show _films_asiatiques_en_salles_actualite" do
    get _films_asiatiques_en_salles_actualite_url(@_films_asiatiques_en_salles_actualite)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_en_salles_actualite_url(@_films_asiatiques_en_salles_actualite)
    assert_response :success
  end

  test "should update _films_asiatiques_en_salles_actualite" do
    patch _films_asiatiques_en_salles_actualite_url(@_films_asiatiques_en_salles_actualite), params: { _films_asiatiques_en_salles_actualite: { name: @_films_asiatiques_en_salles_actualite.name } }
    assert_redirected_to _films_asiatiques_en_salles_actualite_url(@_films_asiatiques_en_salles_actualite)
  end

  test "should destroy _films_asiatiques_en_salles_actualite" do
    assert_difference("FilmsAsiatiquesEnSallesActualite.count", -1) do
      delete _films_asiatiques_en_salles_actualite_url(@_films_asiatiques_en_salles_actualite)
    end

    assert_redirected_to _films_asiatiques_en_salles_actualites_url
  end
end
