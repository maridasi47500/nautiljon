require "test_helper"

class LightNovelsQuizzsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_quizz = _light_novels_quizzs(:one)
  end

  test "should get index" do
    get _light_novels_quizzs_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_quizz_url
    assert_response :success
  end

  test "should create _light_novels_quizz" do
    assert_difference("LightNovelsQuizz.count") do
      post _light_novels_quizzs_url, params: { _light_novels_quizz: { name: @_light_novels_quizz.name } }
    end

    assert_redirected_to _light_novels_quizz_url(LightNovelsQuizz.last)
  end

  test "should show _light_novels_quizz" do
    get _light_novels_quizz_url(@_light_novels_quizz)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_quizz_url(@_light_novels_quizz)
    assert_response :success
  end

  test "should update _light_novels_quizz" do
    patch _light_novels_quizz_url(@_light_novels_quizz), params: { _light_novels_quizz: { name: @_light_novels_quizz.name } }
    assert_redirected_to _light_novels_quizz_url(@_light_novels_quizz)
  end

  test "should destroy _light_novels_quizz" do
    assert_difference("LightNovelsQuizz.count", -1) do
      delete _light_novels_quizz_url(@_light_novels_quizz)
    end

    assert_redirected_to _light_novels_quizzs_url
  end
end
