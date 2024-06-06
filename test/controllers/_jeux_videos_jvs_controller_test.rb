require "test_helper"

class JeuxVideosJvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_jv = _jeux_videos_jvs(:one)
  end

  test "should get index" do
    get _jeux_videos_jvs_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_jv_url
    assert_response :success
  end

  test "should create _jeux_videos_jv" do
    assert_difference("JeuxVideosJv.count") do
      post _jeux_videos_jvs_url, params: { _jeux_videos_jv: { name: @_jeux_videos_jv.name } }
    end

    assert_redirected_to _jeux_videos_jv_url(JeuxVideosJv.last)
  end

  test "should show _jeux_videos_jv" do
    get _jeux_videos_jv_url(@_jeux_videos_jv)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_jv_url(@_jeux_videos_jv)
    assert_response :success
  end

  test "should update _jeux_videos_jv" do
    patch _jeux_videos_jv_url(@_jeux_videos_jv), params: { _jeux_videos_jv: { name: @_jeux_videos_jv.name } }
    assert_redirected_to _jeux_videos_jv_url(@_jeux_videos_jv)
  end

  test "should destroy _jeux_videos_jv" do
    assert_difference("JeuxVideosJv.count", -1) do
      delete _jeux_videos_jv_url(@_jeux_videos_jv)
    end

    assert_redirected_to _jeux_videos_jvs_url
  end
end
