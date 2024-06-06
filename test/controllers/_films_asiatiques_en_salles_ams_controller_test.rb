require "test_helper"

class FilmsAsiatiquesEnSallesAmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_en_salles_am = _films_asiatiques_en_salles_ams(:one)
  end

  test "should get index" do
    get _films_asiatiques_en_salles_ams_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_en_salles_am_url
    assert_response :success
  end

  test "should create _films_asiatiques_en_salles_am" do
    assert_difference("FilmsAsiatiquesEnSallesAm.count") do
      post _films_asiatiques_en_salles_ams_url, params: { _films_asiatiques_en_salles_am: { name: @_films_asiatiques_en_salles_am.name } }
    end

    assert_redirected_to _films_asiatiques_en_salles_am_url(FilmsAsiatiquesEnSallesAm.last)
  end

  test "should show _films_asiatiques_en_salles_am" do
    get _films_asiatiques_en_salles_am_url(@_films_asiatiques_en_salles_am)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_en_salles_am_url(@_films_asiatiques_en_salles_am)
    assert_response :success
  end

  test "should update _films_asiatiques_en_salles_am" do
    patch _films_asiatiques_en_salles_am_url(@_films_asiatiques_en_salles_am), params: { _films_asiatiques_en_salles_am: { name: @_films_asiatiques_en_salles_am.name } }
    assert_redirected_to _films_asiatiques_en_salles_am_url(@_films_asiatiques_en_salles_am)
  end

  test "should destroy _films_asiatiques_en_salles_am" do
    assert_difference("FilmsAsiatiquesEnSallesAm.count", -1) do
      delete _films_asiatiques_en_salles_am_url(@_films_asiatiques_en_salles_am)
    end

    assert_redirected_to _films_asiatiques_en_salles_ams_url
  end
end
