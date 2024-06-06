require "test_helper"

class JeuxVideosOstsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_ost = _jeux_videos_osts(:one)
  end

  test "should get index" do
    get _jeux_videos_osts_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_ost_url
    assert_response :success
  end

  test "should create _jeux_videos_ost" do
    assert_difference("JeuxVideosOst.count") do
      post _jeux_videos_osts_url, params: { _jeux_videos_ost: { name: @_jeux_videos_ost.name } }
    end

    assert_redirected_to _jeux_videos_ost_url(JeuxVideosOst.last)
  end

  test "should show _jeux_videos_ost" do
    get _jeux_videos_ost_url(@_jeux_videos_ost)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_ost_url(@_jeux_videos_ost)
    assert_response :success
  end

  test "should update _jeux_videos_ost" do
    patch _jeux_videos_ost_url(@_jeux_videos_ost), params: { _jeux_videos_ost: { name: @_jeux_videos_ost.name } }
    assert_redirected_to _jeux_videos_ost_url(@_jeux_videos_ost)
  end

  test "should destroy _jeux_videos_ost" do
    assert_difference("JeuxVideosOst.count", -1) do
      delete _jeux_videos_ost_url(@_jeux_videos_ost)
    end

    assert_redirected_to _jeux_videos_osts_url
  end
end
