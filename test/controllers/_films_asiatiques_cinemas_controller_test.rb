require "test_helper"

class FilmsAsiatiquesCinemasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_cinema = _films_asiatiques_cinemas(:one)
  end

  test "should get index" do
    get _films_asiatiques_cinemas_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_cinema_url
    assert_response :success
  end

  test "should create _films_asiatiques_cinema" do
    assert_difference("FilmsAsiatiquesCinema.count") do
      post _films_asiatiques_cinemas_url, params: { _films_asiatiques_cinema: { name: @_films_asiatiques_cinema.name } }
    end

    assert_redirected_to _films_asiatiques_cinema_url(FilmsAsiatiquesCinema.last)
  end

  test "should show _films_asiatiques_cinema" do
    get _films_asiatiques_cinema_url(@_films_asiatiques_cinema)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_cinema_url(@_films_asiatiques_cinema)
    assert_response :success
  end

  test "should update _films_asiatiques_cinema" do
    patch _films_asiatiques_cinema_url(@_films_asiatiques_cinema), params: { _films_asiatiques_cinema: { name: @_films_asiatiques_cinema.name } }
    assert_redirected_to _films_asiatiques_cinema_url(@_films_asiatiques_cinema)
  end

  test "should destroy _films_asiatiques_cinema" do
    assert_difference("FilmsAsiatiquesCinema.count", -1) do
      delete _films_asiatiques_cinema_url(@_films_asiatiques_cinema)
    end

    assert_redirected_to _films_asiatiques_cinemas_url
  end
end
