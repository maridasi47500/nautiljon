require "test_helper"

class FilmsAsiatiquesEnSallesActualiteMinisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_en_salles_actualite_mini = _films_asiatiques_en_salles_actualite_minis(:one)
  end

  test "should get index" do
    get _films_asiatiques_en_salles_actualite_minis_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_en_salles_actualite_mini_url
    assert_response :success
  end

  test "should create _films_asiatiques_en_salles_actualite_mini" do
    assert_difference("FilmsAsiatiquesEnSallesActualiteMini.count") do
      post _films_asiatiques_en_salles_actualite_minis_url, params: { _films_asiatiques_en_salles_actualite_mini: { name: @_films_asiatiques_en_salles_actualite_mini.name } }
    end

    assert_redirected_to _films_asiatiques_en_salles_actualite_mini_url(FilmsAsiatiquesEnSallesActualiteMini.last)
  end

  test "should show _films_asiatiques_en_salles_actualite_mini" do
    get _films_asiatiques_en_salles_actualite_mini_url(@_films_asiatiques_en_salles_actualite_mini)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_en_salles_actualite_mini_url(@_films_asiatiques_en_salles_actualite_mini)
    assert_response :success
  end

  test "should update _films_asiatiques_en_salles_actualite_mini" do
    patch _films_asiatiques_en_salles_actualite_mini_url(@_films_asiatiques_en_salles_actualite_mini), params: { _films_asiatiques_en_salles_actualite_mini: { name: @_films_asiatiques_en_salles_actualite_mini.name } }
    assert_redirected_to _films_asiatiques_en_salles_actualite_mini_url(@_films_asiatiques_en_salles_actualite_mini)
  end

  test "should destroy _films_asiatiques_en_salles_actualite_mini" do
    assert_difference("FilmsAsiatiquesEnSallesActualiteMini.count", -1) do
      delete _films_asiatiques_en_salles_actualite_mini_url(@_films_asiatiques_en_salles_actualite_mini)
    end

    assert_redirected_to _films_asiatiques_en_salles_actualite_minis_url
  end
end
