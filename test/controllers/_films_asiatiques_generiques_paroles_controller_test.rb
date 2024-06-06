require "test_helper"

class FilmsAsiatiquesGeneriquesParolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_generiques_parole = _films_asiatiques_generiques_paroles(:one)
  end

  test "should get index" do
    get _films_asiatiques_generiques_paroles_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_generiques_parole_url
    assert_response :success
  end

  test "should create _films_asiatiques_generiques_parole" do
    assert_difference("FilmsAsiatiquesGeneriquesParole.count") do
      post _films_asiatiques_generiques_paroles_url, params: { _films_asiatiques_generiques_parole: { name: @_films_asiatiques_generiques_parole.name } }
    end

    assert_redirected_to _films_asiatiques_generiques_parole_url(FilmsAsiatiquesGeneriquesParole.last)
  end

  test "should show _films_asiatiques_generiques_parole" do
    get _films_asiatiques_generiques_parole_url(@_films_asiatiques_generiques_parole)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_generiques_parole_url(@_films_asiatiques_generiques_parole)
    assert_response :success
  end

  test "should update _films_asiatiques_generiques_parole" do
    patch _films_asiatiques_generiques_parole_url(@_films_asiatiques_generiques_parole), params: { _films_asiatiques_generiques_parole: { name: @_films_asiatiques_generiques_parole.name } }
    assert_redirected_to _films_asiatiques_generiques_parole_url(@_films_asiatiques_generiques_parole)
  end

  test "should destroy _films_asiatiques_generiques_parole" do
    assert_difference("FilmsAsiatiquesGeneriquesParole.count", -1) do
      delete _films_asiatiques_generiques_parole_url(@_films_asiatiques_generiques_parole)
    end

    assert_redirected_to _films_asiatiques_generiques_paroles_url
  end
end
