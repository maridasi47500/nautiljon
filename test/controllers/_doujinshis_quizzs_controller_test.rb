require "test_helper"

class DoujinshisQuizzsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_quizz = _doujinshis_quizzs(:one)
  end

  test "should get index" do
    get _doujinshis_quizzs_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_quizz_url
    assert_response :success
  end

  test "should create _doujinshis_quizz" do
    assert_difference("DoujinshisQuizz.count") do
      post _doujinshis_quizzs_url, params: { _doujinshis_quizz: { name: @_doujinshis_quizz.name } }
    end

    assert_redirected_to _doujinshis_quizz_url(DoujinshisQuizz.last)
  end

  test "should show _doujinshis_quizz" do
    get _doujinshis_quizz_url(@_doujinshis_quizz)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_quizz_url(@_doujinshis_quizz)
    assert_response :success
  end

  test "should update _doujinshis_quizz" do
    patch _doujinshis_quizz_url(@_doujinshis_quizz), params: { _doujinshis_quizz: { name: @_doujinshis_quizz.name } }
    assert_redirected_to _doujinshis_quizz_url(@_doujinshis_quizz)
  end

  test "should destroy _doujinshis_quizz" do
    assert_difference("DoujinshisQuizz.count", -1) do
      delete _doujinshis_quizz_url(@_doujinshis_quizz)
    end

    assert_redirected_to _doujinshis_quizzs_url
  end
end
