require "test_helper"

class FilmsAsiatiquesEnSallesDramasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_en_salles_drama = _films_asiatiques_en_salles_dramas(:one)
  end

  test "should get index" do
    get _films_asiatiques_en_salles_dramas_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_en_salles_drama_url
    assert_response :success
  end

  test "should create _films_asiatiques_en_salles_drama" do
    assert_difference("FilmsAsiatiquesEnSallesDrama.count") do
      post _films_asiatiques_en_salles_dramas_url, params: { _films_asiatiques_en_salles_drama: { name: @_films_asiatiques_en_salles_drama.name } }
    end

    assert_redirected_to _films_asiatiques_en_salles_drama_url(FilmsAsiatiquesEnSallesDrama.last)
  end

  test "should show _films_asiatiques_en_salles_drama" do
    get _films_asiatiques_en_salles_drama_url(@_films_asiatiques_en_salles_drama)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_en_salles_drama_url(@_films_asiatiques_en_salles_drama)
    assert_response :success
  end

  test "should update _films_asiatiques_en_salles_drama" do
    patch _films_asiatiques_en_salles_drama_url(@_films_asiatiques_en_salles_drama), params: { _films_asiatiques_en_salles_drama: { name: @_films_asiatiques_en_salles_drama.name } }
    assert_redirected_to _films_asiatiques_en_salles_drama_url(@_films_asiatiques_en_salles_drama)
  end

  test "should destroy _films_asiatiques_en_salles_drama" do
    assert_difference("FilmsAsiatiquesEnSallesDrama.count", -1) do
      delete _films_asiatiques_en_salles_drama_url(@_films_asiatiques_en_salles_drama)
    end

    assert_redirected_to _films_asiatiques_en_salles_dramas_url
  end
end
