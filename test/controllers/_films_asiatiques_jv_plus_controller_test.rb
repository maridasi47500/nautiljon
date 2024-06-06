require "test_helper"

class FilmsAsiatiquesJvPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_jv_plu = _films_asiatiques_jv_plus(:one)
  end

  test "should get index" do
    get _films_asiatiques_jv_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_jv_plu_url
    assert_response :success
  end

  test "should create _films_asiatiques_jv_plu" do
    assert_difference("FilmsAsiatiquesJvPlu.count") do
      post _films_asiatiques_jv_plus_url, params: { _films_asiatiques_jv_plu: { name: @_films_asiatiques_jv_plu.name } }
    end

    assert_redirected_to _films_asiatiques_jv_plu_url(FilmsAsiatiquesJvPlu.last)
  end

  test "should show _films_asiatiques_jv_plu" do
    get _films_asiatiques_jv_plu_url(@_films_asiatiques_jv_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_jv_plu_url(@_films_asiatiques_jv_plu)
    assert_response :success
  end

  test "should update _films_asiatiques_jv_plu" do
    patch _films_asiatiques_jv_plu_url(@_films_asiatiques_jv_plu), params: { _films_asiatiques_jv_plu: { name: @_films_asiatiques_jv_plu.name } }
    assert_redirected_to _films_asiatiques_jv_plu_url(@_films_asiatiques_jv_plu)
  end

  test "should destroy _films_asiatiques_jv_plu" do
    assert_difference("FilmsAsiatiquesJvPlu.count", -1) do
      delete _films_asiatiques_jv_plu_url(@_films_asiatiques_jv_plu)
    end

    assert_redirected_to _films_asiatiques_jv_plus_url
  end
end
