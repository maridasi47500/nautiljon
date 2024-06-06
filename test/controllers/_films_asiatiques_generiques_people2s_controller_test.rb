require "test_helper"

class FilmsAsiatiquesGeneriquesPeople2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_generiques_people2 = _films_asiatiques_generiques_people2s(:one)
  end

  test "should get index" do
    get _films_asiatiques_generiques_people2s_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_generiques_people2_url
    assert_response :success
  end

  test "should create _films_asiatiques_generiques_people2" do
    assert_difference("FilmsAsiatiquesGeneriquesPeople2.count") do
      post _films_asiatiques_generiques_people2s_url, params: { _films_asiatiques_generiques_people2: { name: @_films_asiatiques_generiques_people2.name } }
    end

    assert_redirected_to _films_asiatiques_generiques_people2_url(FilmsAsiatiquesGeneriquesPeople2.last)
  end

  test "should show _films_asiatiques_generiques_people2" do
    get _films_asiatiques_generiques_people2_url(@_films_asiatiques_generiques_people2)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_generiques_people2_url(@_films_asiatiques_generiques_people2)
    assert_response :success
  end

  test "should update _films_asiatiques_generiques_people2" do
    patch _films_asiatiques_generiques_people2_url(@_films_asiatiques_generiques_people2), params: { _films_asiatiques_generiques_people2: { name: @_films_asiatiques_generiques_people2.name } }
    assert_redirected_to _films_asiatiques_generiques_people2_url(@_films_asiatiques_generiques_people2)
  end

  test "should destroy _films_asiatiques_generiques_people2" do
    assert_difference("FilmsAsiatiquesGeneriquesPeople2.count", -1) do
      delete _films_asiatiques_generiques_people2_url(@_films_asiatiques_generiques_people2)
    end

    assert_redirected_to _films_asiatiques_generiques_people2s_url
  end
end
