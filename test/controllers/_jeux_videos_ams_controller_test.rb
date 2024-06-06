require "test_helper"

class JeuxVideosAmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_am = _jeux_videos_ams(:one)
  end

  test "should get index" do
    get _jeux_videos_ams_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_am_url
    assert_response :success
  end

  test "should create _jeux_videos_am" do
    assert_difference("JeuxVideosAm.count") do
      post _jeux_videos_ams_url, params: { _jeux_videos_am: { name: @_jeux_videos_am.name } }
    end

    assert_redirected_to _jeux_videos_am_url(JeuxVideosAm.last)
  end

  test "should show _jeux_videos_am" do
    get _jeux_videos_am_url(@_jeux_videos_am)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_am_url(@_jeux_videos_am)
    assert_response :success
  end

  test "should update _jeux_videos_am" do
    patch _jeux_videos_am_url(@_jeux_videos_am), params: { _jeux_videos_am: { name: @_jeux_videos_am.name } }
    assert_redirected_to _jeux_videos_am_url(@_jeux_videos_am)
  end

  test "should destroy _jeux_videos_am" do
    assert_difference("JeuxVideosAm.count", -1) do
      delete _jeux_videos_am_url(@_jeux_videos_am)
    end

    assert_redirected_to _jeux_videos_ams_url
  end
end
