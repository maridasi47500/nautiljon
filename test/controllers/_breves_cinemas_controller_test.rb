require "test_helper"

class BrevesCinemasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_cinema = _breves_cinemas(:one)
  end

  test "should get index" do
    get _breves_cinemas_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_cinema_url
    assert_response :success
  end

  test "should create _breves_cinema" do
    assert_difference("BrevesCinema.count") do
      post _breves_cinemas_url, params: { _breves_cinema: { name: @_breves_cinema.name } }
    end

    assert_redirected_to _breves_cinema_url(BrevesCinema.last)
  end

  test "should show _breves_cinema" do
    get _breves_cinema_url(@_breves_cinema)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_cinema_url(@_breves_cinema)
    assert_response :success
  end

  test "should update _breves_cinema" do
    patch _breves_cinema_url(@_breves_cinema), params: { _breves_cinema: { name: @_breves_cinema.name } }
    assert_redirected_to _breves_cinema_url(@_breves_cinema)
  end

  test "should destroy _breves_cinema" do
    assert_difference("BrevesCinema.count", -1) do
      delete _breves_cinema_url(@_breves_cinema)
    end

    assert_redirected_to _breves_cinemas_url
  end
end
