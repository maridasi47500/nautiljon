require "test_helper"

class FilmsAsiatiquesCulturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_culture = _films_asiatiques_cultures(:one)
  end

  test "should get index" do
    get _films_asiatiques_cultures_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_culture_url
    assert_response :success
  end

  test "should create _films_asiatiques_culture" do
    assert_difference("FilmsAsiatiquesCulture.count") do
      post _films_asiatiques_cultures_url, params: { _films_asiatiques_culture: { name: @_films_asiatiques_culture.name } }
    end

    assert_redirected_to _films_asiatiques_culture_url(FilmsAsiatiquesCulture.last)
  end

  test "should show _films_asiatiques_culture" do
    get _films_asiatiques_culture_url(@_films_asiatiques_culture)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_culture_url(@_films_asiatiques_culture)
    assert_response :success
  end

  test "should update _films_asiatiques_culture" do
    patch _films_asiatiques_culture_url(@_films_asiatiques_culture), params: { _films_asiatiques_culture: { name: @_films_asiatiques_culture.name } }
    assert_redirected_to _films_asiatiques_culture_url(@_films_asiatiques_culture)
  end

  test "should destroy _films_asiatiques_culture" do
    assert_difference("FilmsAsiatiquesCulture.count", -1) do
      delete _films_asiatiques_culture_url(@_films_asiatiques_culture)
    end

    assert_redirected_to _films_asiatiques_cultures_url
  end
end
