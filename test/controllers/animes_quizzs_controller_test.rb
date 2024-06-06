require "test_helper"

class AnimesQuizzsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_quizz = animes_quizzs(:one)
  end

  test "should get index" do
    get animes_quizzs_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_quizz_url
    assert_response :success
  end

  test "should create animes_quizz" do
    assert_difference("AnimesQuizz.count") do
      post animes_quizzs_url, params: { animes_quizz: { name: @animes_quizz.name } }
    end

    assert_redirected_to animes_quizz_url(AnimesQuizz.last)
  end

  test "should show animes_quizz" do
    get animes_quizz_url(@animes_quizz)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_quizz_url(@animes_quizz)
    assert_response :success
  end

  test "should update animes_quizz" do
    patch animes_quizz_url(@animes_quizz), params: { animes_quizz: { name: @animes_quizz.name } }
    assert_redirected_to animes_quizz_url(@animes_quizz)
  end

  test "should destroy animes_quizz" do
    assert_difference("AnimesQuizz.count", -1) do
      delete animes_quizz_url(@animes_quizz)
    end

    assert_redirected_to animes_quizzs_url
  end
end
