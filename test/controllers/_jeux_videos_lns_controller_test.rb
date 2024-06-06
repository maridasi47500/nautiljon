require "test_helper"

class JeuxVideosLnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_ln = _jeux_videos_lns(:one)
  end

  test "should get index" do
    get _jeux_videos_lns_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_ln_url
    assert_response :success
  end

  test "should create _jeux_videos_ln" do
    assert_difference("JeuxVideosLn.count") do
      post _jeux_videos_lns_url, params: { _jeux_videos_ln: { name: @_jeux_videos_ln.name } }
    end

    assert_redirected_to _jeux_videos_ln_url(JeuxVideosLn.last)
  end

  test "should show _jeux_videos_ln" do
    get _jeux_videos_ln_url(@_jeux_videos_ln)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_ln_url(@_jeux_videos_ln)
    assert_response :success
  end

  test "should update _jeux_videos_ln" do
    patch _jeux_videos_ln_url(@_jeux_videos_ln), params: { _jeux_videos_ln: { name: @_jeux_videos_ln.name } }
    assert_redirected_to _jeux_videos_ln_url(@_jeux_videos_ln)
  end

  test "should destroy _jeux_videos_ln" do
    assert_difference("JeuxVideosLn.count", -1) do
      delete _jeux_videos_ln_url(@_jeux_videos_ln)
    end

    assert_redirected_to _jeux_videos_lns_url
  end
end
