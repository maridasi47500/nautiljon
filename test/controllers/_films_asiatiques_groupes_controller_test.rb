require "test_helper"

class FilmsAsiatiquesGroupesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_groupe = _films_asiatiques_groupes(:one)
  end

  test "should get index" do
    get _films_asiatiques_groupes_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_groupe_url
    assert_response :success
  end

  test "should create _films_asiatiques_groupe" do
    assert_difference("FilmsAsiatiquesGroupe.count") do
      post _films_asiatiques_groupes_url, params: { _films_asiatiques_groupe: { name: @_films_asiatiques_groupe.name } }
    end

    assert_redirected_to _films_asiatiques_groupe_url(FilmsAsiatiquesGroupe.last)
  end

  test "should show _films_asiatiques_groupe" do
    get _films_asiatiques_groupe_url(@_films_asiatiques_groupe)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_groupe_url(@_films_asiatiques_groupe)
    assert_response :success
  end

  test "should update _films_asiatiques_groupe" do
    patch _films_asiatiques_groupe_url(@_films_asiatiques_groupe), params: { _films_asiatiques_groupe: { name: @_films_asiatiques_groupe.name } }
    assert_redirected_to _films_asiatiques_groupe_url(@_films_asiatiques_groupe)
  end

  test "should destroy _films_asiatiques_groupe" do
    assert_difference("FilmsAsiatiquesGroupe.count", -1) do
      delete _films_asiatiques_groupe_url(@_films_asiatiques_groupe)
    end

    assert_redirected_to _films_asiatiques_groupes_url
  end
end
