require "test_helper"

class JeuxVideosAmvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_amv = _jeux_videos_amvs(:one)
  end

  test "should get index" do
    get _jeux_videos_amvs_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_amv_url
    assert_response :success
  end

  test "should create _jeux_videos_amv" do
    assert_difference("JeuxVideosAmv.count") do
      post _jeux_videos_amvs_url, params: { _jeux_videos_amv: { name: @_jeux_videos_amv.name } }
    end

    assert_redirected_to _jeux_videos_amv_url(JeuxVideosAmv.last)
  end

  test "should show _jeux_videos_amv" do
    get _jeux_videos_amv_url(@_jeux_videos_amv)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_amv_url(@_jeux_videos_amv)
    assert_response :success
  end

  test "should update _jeux_videos_amv" do
    patch _jeux_videos_amv_url(@_jeux_videos_amv), params: { _jeux_videos_amv: { name: @_jeux_videos_amv.name } }
    assert_redirected_to _jeux_videos_amv_url(@_jeux_videos_amv)
  end

  test "should destroy _jeux_videos_amv" do
    assert_difference("JeuxVideosAmv.count", -1) do
      delete _jeux_videos_amv_url(@_jeux_videos_amv)
    end

    assert_redirected_to _jeux_videos_amvs_url
  end
end
