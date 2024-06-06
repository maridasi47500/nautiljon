require "test_helper"

class FilmsAsiatiquesQuizzsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_quizz = _films_asiatiques_quizzs(:one)
  end

  test "should get index" do
    get _films_asiatiques_quizzs_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_quizz_url
    assert_response :success
  end

  test "should create _films_asiatiques_quizz" do
    assert_difference("FilmsAsiatiquesQuizz.count") do
      post _films_asiatiques_quizzs_url, params: { _films_asiatiques_quizz: { name: @_films_asiatiques_quizz.name } }
    end

    assert_redirected_to _films_asiatiques_quizz_url(FilmsAsiatiquesQuizz.last)
  end

  test "should show _films_asiatiques_quizz" do
    get _films_asiatiques_quizz_url(@_films_asiatiques_quizz)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_quizz_url(@_films_asiatiques_quizz)
    assert_response :success
  end

  test "should update _films_asiatiques_quizz" do
    patch _films_asiatiques_quizz_url(@_films_asiatiques_quizz), params: { _films_asiatiques_quizz: { name: @_films_asiatiques_quizz.name } }
    assert_redirected_to _films_asiatiques_quizz_url(@_films_asiatiques_quizz)
  end

  test "should destroy _films_asiatiques_quizz" do
    assert_difference("FilmsAsiatiquesQuizz.count", -1) do
      delete _films_asiatiques_quizz_url(@_films_asiatiques_quizz)
    end

    assert_redirected_to _films_asiatiques_quizzs_url
  end
end
