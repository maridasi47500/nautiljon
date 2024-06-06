require "test_helper"

class FilmsAsiatiquesUniversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_univer = _films_asiatiques_univers(:one)
  end

  test "should get index" do
    get _films_asiatiques_univers_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_univer_url
    assert_response :success
  end

  test "should create _films_asiatiques_univer" do
    assert_difference("FilmsAsiatiquesUniver.count") do
      post _films_asiatiques_univers_url, params: { _films_asiatiques_univer: { name: @_films_asiatiques_univer.name } }
    end

    assert_redirected_to _films_asiatiques_univer_url(FilmsAsiatiquesUniver.last)
  end

  test "should show _films_asiatiques_univer" do
    get _films_asiatiques_univer_url(@_films_asiatiques_univer)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_univer_url(@_films_asiatiques_univer)
    assert_response :success
  end

  test "should update _films_asiatiques_univer" do
    patch _films_asiatiques_univer_url(@_films_asiatiques_univer), params: { _films_asiatiques_univer: { name: @_films_asiatiques_univer.name } }
    assert_redirected_to _films_asiatiques_univer_url(@_films_asiatiques_univer)
  end

  test "should destroy _films_asiatiques_univer" do
    assert_difference("FilmsAsiatiquesUniver.count", -1) do
      delete _films_asiatiques_univer_url(@_films_asiatiques_univer)
    end

    assert_redirected_to _films_asiatiques_univers_url
  end
end
