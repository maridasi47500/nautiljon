require "test_helper"

class FilmsAsiatiquesOstsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_ost = _films_asiatiques_osts(:one)
  end

  test "should get index" do
    get _films_asiatiques_osts_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_ost_url
    assert_response :success
  end

  test "should create _films_asiatiques_ost" do
    assert_difference("FilmsAsiatiquesOst.count") do
      post _films_asiatiques_osts_url, params: { _films_asiatiques_ost: { name: @_films_asiatiques_ost.name } }
    end

    assert_redirected_to _films_asiatiques_ost_url(FilmsAsiatiquesOst.last)
  end

  test "should show _films_asiatiques_ost" do
    get _films_asiatiques_ost_url(@_films_asiatiques_ost)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_ost_url(@_films_asiatiques_ost)
    assert_response :success
  end

  test "should update _films_asiatiques_ost" do
    patch _films_asiatiques_ost_url(@_films_asiatiques_ost), params: { _films_asiatiques_ost: { name: @_films_asiatiques_ost.name } }
    assert_redirected_to _films_asiatiques_ost_url(@_films_asiatiques_ost)
  end

  test "should destroy _films_asiatiques_ost" do
    assert_difference("FilmsAsiatiquesOst.count", -1) do
      delete _films_asiatiques_ost_url(@_films_asiatiques_ost)
    end

    assert_redirected_to _films_asiatiques_osts_url
  end
end
