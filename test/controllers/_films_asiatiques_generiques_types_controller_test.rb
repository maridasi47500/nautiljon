require "test_helper"

class FilmsAsiatiquesGeneriquesTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_generiques_type = _films_asiatiques_generiques_types(:one)
  end

  test "should get index" do
    get _films_asiatiques_generiques_types_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_generiques_type_url
    assert_response :success
  end

  test "should create _films_asiatiques_generiques_type" do
    assert_difference("FilmsAsiatiquesGeneriquesType.count") do
      post _films_asiatiques_generiques_types_url, params: { _films_asiatiques_generiques_type: { name: @_films_asiatiques_generiques_type.name } }
    end

    assert_redirected_to _films_asiatiques_generiques_type_url(FilmsAsiatiquesGeneriquesType.last)
  end

  test "should show _films_asiatiques_generiques_type" do
    get _films_asiatiques_generiques_type_url(@_films_asiatiques_generiques_type)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_generiques_type_url(@_films_asiatiques_generiques_type)
    assert_response :success
  end

  test "should update _films_asiatiques_generiques_type" do
    patch _films_asiatiques_generiques_type_url(@_films_asiatiques_generiques_type), params: { _films_asiatiques_generiques_type: { name: @_films_asiatiques_generiques_type.name } }
    assert_redirected_to _films_asiatiques_generiques_type_url(@_films_asiatiques_generiques_type)
  end

  test "should destroy _films_asiatiques_generiques_type" do
    assert_difference("FilmsAsiatiquesGeneriquesType.count", -1) do
      delete _films_asiatiques_generiques_type_url(@_films_asiatiques_generiques_type)
    end

    assert_redirected_to _films_asiatiques_generiques_types_url
  end
end
