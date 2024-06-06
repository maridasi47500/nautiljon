require "test_helper"

class BrevesQuizzsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_quizz = _breves_quizzs(:one)
  end

  test "should get index" do
    get _breves_quizzs_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_quizz_url
    assert_response :success
  end

  test "should create _breves_quizz" do
    assert_difference("BrevesQuizz.count") do
      post _breves_quizzs_url, params: { _breves_quizz: { name: @_breves_quizz.name } }
    end

    assert_redirected_to _breves_quizz_url(BrevesQuizz.last)
  end

  test "should show _breves_quizz" do
    get _breves_quizz_url(@_breves_quizz)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_quizz_url(@_breves_quizz)
    assert_response :success
  end

  test "should update _breves_quizz" do
    patch _breves_quizz_url(@_breves_quizz), params: { _breves_quizz: { name: @_breves_quizz.name } }
    assert_redirected_to _breves_quizz_url(@_breves_quizz)
  end

  test "should destroy _breves_quizz" do
    assert_difference("BrevesQuizz.count", -1) do
      delete _breves_quizz_url(@_breves_quizz)
    end

    assert_redirected_to _breves_quizzs_url
  end
end
