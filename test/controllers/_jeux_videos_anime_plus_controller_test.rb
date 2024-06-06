require "test_helper"

class JeuxVideosAnimePlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_anime_plu = _jeux_videos_anime_plus(:one)
  end

  test "should get index" do
    get _jeux_videos_anime_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_anime_plu_url
    assert_response :success
  end

  test "should create _jeux_videos_anime_plu" do
    assert_difference("JeuxVideosAnimePlu.count") do
      post _jeux_videos_anime_plus_url, params: { _jeux_videos_anime_plu: { name: @_jeux_videos_anime_plu.name } }
    end

    assert_redirected_to _jeux_videos_anime_plu_url(JeuxVideosAnimePlu.last)
  end

  test "should show _jeux_videos_anime_plu" do
    get _jeux_videos_anime_plu_url(@_jeux_videos_anime_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_anime_plu_url(@_jeux_videos_anime_plu)
    assert_response :success
  end

  test "should update _jeux_videos_anime_plu" do
    patch _jeux_videos_anime_plu_url(@_jeux_videos_anime_plu), params: { _jeux_videos_anime_plu: { name: @_jeux_videos_anime_plu.name } }
    assert_redirected_to _jeux_videos_anime_plu_url(@_jeux_videos_anime_plu)
  end

  test "should destroy _jeux_videos_anime_plu" do
    assert_difference("JeuxVideosAnimePlu.count", -1) do
      delete _jeux_videos_anime_plu_url(@_jeux_videos_anime_plu)
    end

    assert_redirected_to _jeux_videos_anime_plus_url
  end
end
