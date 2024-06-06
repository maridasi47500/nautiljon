require "test_helper"

class FilmsAsiatiquesLitteratureAsiatiquePlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_litterature_asiatique_plu = _films_asiatiques_litterature_asiatique_plus(:one)
  end

  test "should get index" do
    get _films_asiatiques_litterature_asiatique_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_litterature_asiatique_plu_url
    assert_response :success
  end

  test "should create _films_asiatiques_litterature_asiatique_plu" do
    assert_difference("FilmsAsiatiquesLitteratureAsiatiquePlu.count") do
      post _films_asiatiques_litterature_asiatique_plus_url, params: { _films_asiatiques_litterature_asiatique_plu: { name: @_films_asiatiques_litterature_asiatique_plu.name } }
    end

    assert_redirected_to _films_asiatiques_litterature_asiatique_plu_url(FilmsAsiatiquesLitteratureAsiatiquePlu.last)
  end

  test "should show _films_asiatiques_litterature_asiatique_plu" do
    get _films_asiatiques_litterature_asiatique_plu_url(@_films_asiatiques_litterature_asiatique_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_litterature_asiatique_plu_url(@_films_asiatiques_litterature_asiatique_plu)
    assert_response :success
  end

  test "should update _films_asiatiques_litterature_asiatique_plu" do
    patch _films_asiatiques_litterature_asiatique_plu_url(@_films_asiatiques_litterature_asiatique_plu), params: { _films_asiatiques_litterature_asiatique_plu: { name: @_films_asiatiques_litterature_asiatique_plu.name } }
    assert_redirected_to _films_asiatiques_litterature_asiatique_plu_url(@_films_asiatiques_litterature_asiatique_plu)
  end

  test "should destroy _films_asiatiques_litterature_asiatique_plu" do
    assert_difference("FilmsAsiatiquesLitteratureAsiatiquePlu.count", -1) do
      delete _films_asiatiques_litterature_asiatique_plu_url(@_films_asiatiques_litterature_asiatique_plu)
    end

    assert_redirected_to _films_asiatiques_litterature_asiatique_plus_url
  end
end
