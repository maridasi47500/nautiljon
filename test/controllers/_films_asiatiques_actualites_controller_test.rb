require "test_helper"

class FilmsAsiatiquesActualitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_actualite = _films_asiatiques_actualites(:one)
  end

  test "should get index" do
    get _films_asiatiques_actualites_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_actualite_url
    assert_response :success
  end

  test "should create _films_asiatiques_actualite" do
    assert_difference("FilmsAsiatiquesActualite.count") do
      post _films_asiatiques_actualites_url, params: { _films_asiatiques_actualite: { name: @_films_asiatiques_actualite.name } }
    end

    assert_redirected_to _films_asiatiques_actualite_url(FilmsAsiatiquesActualite.last)
  end

  test "should show _films_asiatiques_actualite" do
    get _films_asiatiques_actualite_url(@_films_asiatiques_actualite)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_actualite_url(@_films_asiatiques_actualite)
    assert_response :success
  end

  test "should update _films_asiatiques_actualite" do
    patch _films_asiatiques_actualite_url(@_films_asiatiques_actualite), params: { _films_asiatiques_actualite: { name: @_films_asiatiques_actualite.name } }
    assert_redirected_to _films_asiatiques_actualite_url(@_films_asiatiques_actualite)
  end

  test "should destroy _films_asiatiques_actualite" do
    assert_difference("FilmsAsiatiquesActualite.count", -1) do
      delete _films_asiatiques_actualite_url(@_films_asiatiques_actualite)
    end

    assert_redirected_to _films_asiatiques_actualites_url
  end
end
