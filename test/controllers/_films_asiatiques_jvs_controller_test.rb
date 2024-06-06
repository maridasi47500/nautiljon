require "test_helper"

class FilmsAsiatiquesJvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_jv = _films_asiatiques_jvs(:one)
  end

  test "should get index" do
    get _films_asiatiques_jvs_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_jv_url
    assert_response :success
  end

  test "should create _films_asiatiques_jv" do
    assert_difference("FilmsAsiatiquesJv.count") do
      post _films_asiatiques_jvs_url, params: { _films_asiatiques_jv: { name: @_films_asiatiques_jv.name } }
    end

    assert_redirected_to _films_asiatiques_jv_url(FilmsAsiatiquesJv.last)
  end

  test "should show _films_asiatiques_jv" do
    get _films_asiatiques_jv_url(@_films_asiatiques_jv)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_jv_url(@_films_asiatiques_jv)
    assert_response :success
  end

  test "should update _films_asiatiques_jv" do
    patch _films_asiatiques_jv_url(@_films_asiatiques_jv), params: { _films_asiatiques_jv: { name: @_films_asiatiques_jv.name } }
    assert_redirected_to _films_asiatiques_jv_url(@_films_asiatiques_jv)
  end

  test "should destroy _films_asiatiques_jv" do
    assert_difference("FilmsAsiatiquesJv.count", -1) do
      delete _films_asiatiques_jv_url(@_films_asiatiques_jv)
    end

    assert_redirected_to _films_asiatiques_jvs_url
  end
end
