require "test_helper"

class FilmsAsiatiquesConcoursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_concour = _films_asiatiques_concours(:one)
  end

  test "should get index" do
    get _films_asiatiques_concours_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_concour_url
    assert_response :success
  end

  test "should create _films_asiatiques_concour" do
    assert_difference("FilmsAsiatiquesConcour.count") do
      post _films_asiatiques_concours_url, params: { _films_asiatiques_concour: { name: @_films_asiatiques_concour.name } }
    end

    assert_redirected_to _films_asiatiques_concour_url(FilmsAsiatiquesConcour.last)
  end

  test "should show _films_asiatiques_concour" do
    get _films_asiatiques_concour_url(@_films_asiatiques_concour)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_concour_url(@_films_asiatiques_concour)
    assert_response :success
  end

  test "should update _films_asiatiques_concour" do
    patch _films_asiatiques_concour_url(@_films_asiatiques_concour), params: { _films_asiatiques_concour: { name: @_films_asiatiques_concour.name } }
    assert_redirected_to _films_asiatiques_concour_url(@_films_asiatiques_concour)
  end

  test "should destroy _films_asiatiques_concour" do
    assert_difference("FilmsAsiatiquesConcour.count", -1) do
      delete _films_asiatiques_concour_url(@_films_asiatiques_concour)
    end

    assert_redirected_to _films_asiatiques_concours_url
  end
end
