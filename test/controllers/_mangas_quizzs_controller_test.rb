require "test_helper"

class MangasQuizzsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_quizz = _mangas_quizzs(:one)
  end

  test "should get index" do
    get _mangas_quizzs_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_quizz_url
    assert_response :success
  end

  test "should create _mangas_quizz" do
    assert_difference("MangasQuizz.count") do
      post _mangas_quizzs_url, params: { _mangas_quizz: { name: @_mangas_quizz.name } }
    end

    assert_redirected_to _mangas_quizz_url(MangasQuizz.last)
  end

  test "should show _mangas_quizz" do
    get _mangas_quizz_url(@_mangas_quizz)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_quizz_url(@_mangas_quizz)
    assert_response :success
  end

  test "should update _mangas_quizz" do
    patch _mangas_quizz_url(@_mangas_quizz), params: { _mangas_quizz: { name: @_mangas_quizz.name } }
    assert_redirected_to _mangas_quizz_url(@_mangas_quizz)
  end

  test "should destroy _mangas_quizz" do
    assert_difference("MangasQuizz.count", -1) do
      delete _mangas_quizz_url(@_mangas_quizz)
    end

    assert_redirected_to _mangas_quizzs_url
  end
end
