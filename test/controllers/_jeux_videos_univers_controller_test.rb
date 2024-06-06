require "test_helper"

class JeuxVideosUniversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_univer = _jeux_videos_univers(:one)
  end

  test "should get index" do
    get _jeux_videos_univers_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_univer_url
    assert_response :success
  end

  test "should create _jeux_videos_univer" do
    assert_difference("JeuxVideosUniver.count") do
      post _jeux_videos_univers_url, params: { _jeux_videos_univer: { name: @_jeux_videos_univer.name } }
    end

    assert_redirected_to _jeux_videos_univer_url(JeuxVideosUniver.last)
  end

  test "should show _jeux_videos_univer" do
    get _jeux_videos_univer_url(@_jeux_videos_univer)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_univer_url(@_jeux_videos_univer)
    assert_response :success
  end

  test "should update _jeux_videos_univer" do
    patch _jeux_videos_univer_url(@_jeux_videos_univer), params: { _jeux_videos_univer: { name: @_jeux_videos_univer.name } }
    assert_redirected_to _jeux_videos_univer_url(@_jeux_videos_univer)
  end

  test "should destroy _jeux_videos_univer" do
    assert_difference("JeuxVideosUniver.count", -1) do
      delete _jeux_videos_univer_url(@_jeux_videos_univer)
    end

    assert_redirected_to _jeux_videos_univers_url
  end
end
