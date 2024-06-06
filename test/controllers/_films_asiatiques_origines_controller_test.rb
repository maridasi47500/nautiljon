require "test_helper"

class FilmsAsiatiquesOriginesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_origine = _films_asiatiques_origines(:one)
  end

  test "should get index" do
    get _films_asiatiques_origines_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_origine_url
    assert_response :success
  end

  test "should create _films_asiatiques_origine" do
    assert_difference("FilmsAsiatiquesOrigine.count") do
      post _films_asiatiques_origines_url, params: { _films_asiatiques_origine: { name: @_films_asiatiques_origine.name } }
    end

    assert_redirected_to _films_asiatiques_origine_url(FilmsAsiatiquesOrigine.last)
  end

  test "should show _films_asiatiques_origine" do
    get _films_asiatiques_origine_url(@_films_asiatiques_origine)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_origine_url(@_films_asiatiques_origine)
    assert_response :success
  end

  test "should update _films_asiatiques_origine" do
    patch _films_asiatiques_origine_url(@_films_asiatiques_origine), params: { _films_asiatiques_origine: { name: @_films_asiatiques_origine.name } }
    assert_redirected_to _films_asiatiques_origine_url(@_films_asiatiques_origine)
  end

  test "should destroy _films_asiatiques_origine" do
    assert_difference("FilmsAsiatiquesOrigine.count", -1) do
      delete _films_asiatiques_origine_url(@_films_asiatiques_origine)
    end

    assert_redirected_to _films_asiatiques_origines_url
  end
end
