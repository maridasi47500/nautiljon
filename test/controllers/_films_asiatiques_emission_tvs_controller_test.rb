require "test_helper"

class FilmsAsiatiquesEmissionTvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_emission_tv = _films_asiatiques_emission_tvs(:one)
  end

  test "should get index" do
    get _films_asiatiques_emission_tvs_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_emission_tv_url
    assert_response :success
  end

  test "should create _films_asiatiques_emission_tv" do
    assert_difference("FilmsAsiatiquesEmissionTv.count") do
      post _films_asiatiques_emission_tvs_url, params: { _films_asiatiques_emission_tv: { name: @_films_asiatiques_emission_tv.name } }
    end

    assert_redirected_to _films_asiatiques_emission_tv_url(FilmsAsiatiquesEmissionTv.last)
  end

  test "should show _films_asiatiques_emission_tv" do
    get _films_asiatiques_emission_tv_url(@_films_asiatiques_emission_tv)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_emission_tv_url(@_films_asiatiques_emission_tv)
    assert_response :success
  end

  test "should update _films_asiatiques_emission_tv" do
    patch _films_asiatiques_emission_tv_url(@_films_asiatiques_emission_tv), params: { _films_asiatiques_emission_tv: { name: @_films_asiatiques_emission_tv.name } }
    assert_redirected_to _films_asiatiques_emission_tv_url(@_films_asiatiques_emission_tv)
  end

  test "should destroy _films_asiatiques_emission_tv" do
    assert_difference("FilmsAsiatiquesEmissionTv.count", -1) do
      delete _films_asiatiques_emission_tv_url(@_films_asiatiques_emission_tv)
    end

    assert_redirected_to _films_asiatiques_emission_tvs_url
  end
end
