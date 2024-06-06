require "test_helper"

class JeuxVideosQuizzsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_quizz = _jeux_videos_quizzs(:one)
  end

  test "should get index" do
    get _jeux_videos_quizzs_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_quizz_url
    assert_response :success
  end

  test "should create _jeux_videos_quizz" do
    assert_difference("JeuxVideosQuizz.count") do
      post _jeux_videos_quizzs_url, params: { _jeux_videos_quizz: { name: @_jeux_videos_quizz.name } }
    end

    assert_redirected_to _jeux_videos_quizz_url(JeuxVideosQuizz.last)
  end

  test "should show _jeux_videos_quizz" do
    get _jeux_videos_quizz_url(@_jeux_videos_quizz)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_quizz_url(@_jeux_videos_quizz)
    assert_response :success
  end

  test "should update _jeux_videos_quizz" do
    patch _jeux_videos_quizz_url(@_jeux_videos_quizz), params: { _jeux_videos_quizz: { name: @_jeux_videos_quizz.name } }
    assert_redirected_to _jeux_videos_quizz_url(@_jeux_videos_quizz)
  end

  test "should destroy _jeux_videos_quizz" do
    assert_difference("JeuxVideosQuizz.count", -1) do
      delete _jeux_videos_quizz_url(@_jeux_videos_quizz)
    end

    assert_redirected_to _jeux_videos_quizzs_url
  end
end
