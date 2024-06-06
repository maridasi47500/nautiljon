require "test_helper"

class JeuxVideosDoujinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_doujin = _jeux_videos_doujins(:one)
  end

  test "should get index" do
    get _jeux_videos_doujins_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_doujin_url
    assert_response :success
  end

  test "should create _jeux_videos_doujin" do
    assert_difference("JeuxVideosDoujin.count") do
      post _jeux_videos_doujins_url, params: { _jeux_videos_doujin: { name: @_jeux_videos_doujin.name } }
    end

    assert_redirected_to _jeux_videos_doujin_url(JeuxVideosDoujin.last)
  end

  test "should show _jeux_videos_doujin" do
    get _jeux_videos_doujin_url(@_jeux_videos_doujin)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_doujin_url(@_jeux_videos_doujin)
    assert_response :success
  end

  test "should update _jeux_videos_doujin" do
    patch _jeux_videos_doujin_url(@_jeux_videos_doujin), params: { _jeux_videos_doujin: { name: @_jeux_videos_doujin.name } }
    assert_redirected_to _jeux_videos_doujin_url(@_jeux_videos_doujin)
  end

  test "should destroy _jeux_videos_doujin" do
    assert_difference("JeuxVideosDoujin.count", -1) do
      delete _jeux_videos_doujin_url(@_jeux_videos_doujin)
    end

    assert_redirected_to _jeux_videos_doujins_url
  end
end
