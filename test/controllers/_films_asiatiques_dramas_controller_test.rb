require "test_helper"

class FilmsAsiatiquesDramasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_drama = _films_asiatiques_dramas(:one)
  end

  test "should get index" do
    get _films_asiatiques_dramas_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_drama_url
    assert_response :success
  end

  test "should create _films_asiatiques_drama" do
    assert_difference("FilmsAsiatiquesDrama.count") do
      post _films_asiatiques_dramas_url, params: { _films_asiatiques_drama: { name: @_films_asiatiques_drama.name } }
    end

    assert_redirected_to _films_asiatiques_drama_url(FilmsAsiatiquesDrama.last)
  end

  test "should show _films_asiatiques_drama" do
    get _films_asiatiques_drama_url(@_films_asiatiques_drama)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_drama_url(@_films_asiatiques_drama)
    assert_response :success
  end

  test "should update _films_asiatiques_drama" do
    patch _films_asiatiques_drama_url(@_films_asiatiques_drama), params: { _films_asiatiques_drama: { name: @_films_asiatiques_drama.name } }
    assert_redirected_to _films_asiatiques_drama_url(@_films_asiatiques_drama)
  end

  test "should destroy _films_asiatiques_drama" do
    assert_difference("FilmsAsiatiquesDrama.count", -1) do
      delete _films_asiatiques_drama_url(@_films_asiatiques_drama)
    end

    assert_redirected_to _films_asiatiques_dramas_url
  end
end
