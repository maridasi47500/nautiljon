require "test_helper"

class FilmsAsiatiquesEnSallesLanguesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_en_salles_langue = _films_asiatiques_en_salles_langues(:one)
  end

  test "should get index" do
    get _films_asiatiques_en_salles_langues_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_en_salles_langue_url
    assert_response :success
  end

  test "should create _films_asiatiques_en_salles_langue" do
    assert_difference("FilmsAsiatiquesEnSallesLangue.count") do
      post _films_asiatiques_en_salles_langues_url, params: { _films_asiatiques_en_salles_langue: { name: @_films_asiatiques_en_salles_langue.name } }
    end

    assert_redirected_to _films_asiatiques_en_salles_langue_url(FilmsAsiatiquesEnSallesLangue.last)
  end

  test "should show _films_asiatiques_en_salles_langue" do
    get _films_asiatiques_en_salles_langue_url(@_films_asiatiques_en_salles_langue)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_en_salles_langue_url(@_films_asiatiques_en_salles_langue)
    assert_response :success
  end

  test "should update _films_asiatiques_en_salles_langue" do
    patch _films_asiatiques_en_salles_langue_url(@_films_asiatiques_en_salles_langue), params: { _films_asiatiques_en_salles_langue: { name: @_films_asiatiques_en_salles_langue.name } }
    assert_redirected_to _films_asiatiques_en_salles_langue_url(@_films_asiatiques_en_salles_langue)
  end

  test "should destroy _films_asiatiques_en_salles_langue" do
    assert_difference("FilmsAsiatiquesEnSallesLangue.count", -1) do
      delete _films_asiatiques_en_salles_langue_url(@_films_asiatiques_en_salles_langue)
    end

    assert_redirected_to _films_asiatiques_en_salles_langues_url
  end
end
